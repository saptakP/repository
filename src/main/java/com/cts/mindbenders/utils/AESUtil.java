package com.cts.mindbenders.utils;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

/**
 * Utility class for AES encryption & decryption
 *
 * @author 361573
 *
 */
@Configuration
@PropertySource("classpath:config.properties")
@Component
public class AESUtil {


	private static final Logger logger = LoggerFactory.getLogger(AESUtil.class);
	
	private static String secret;
	private static SecretKeySpec secretKey;
	private static byte[] key;

	@Value("${secret}")
	public void setSecret(String secret) {
		AESUtil.secret = secret;
	}

	/**
	 * @param myKey
	 */
	public static void setKey(String myKey) {
		MessageDigest sha = null;
		try {
			key = myKey.getBytes("UTF-8");
			sha = MessageDigest.getInstance("SHA-1");
			key = sha.digest(key);
			key = Arrays.copyOf(key, 16);
			secretKey = new SecretKeySpec(key, "AES");
		} catch (NoSuchAlgorithmException e) {
			logger.error("Error while setting key: " + e.toString());
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			logger.error("Error while setting key: " + e.toString());
			e.printStackTrace();
		}
	}

	/**
	 * Returns encrypted form of the string in input
	 *
	 * @param strToEncrypt
	 * @return String
	 * @throws Exception 
	 */
	public static String encrypt(String strToEncrypt) throws Exception {
		String encryptedString = null;
		try {
			setKey(secret);
			Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5Padding");
			cipher.init(Cipher.ENCRYPT_MODE, secretKey);
			encryptedString = new BASE64Encoder().encode(cipher.doFinal(strToEncrypt.getBytes("UTF-8")));
		} catch (Exception e) {
			logger.error("Error while encrypting: " + e.toString());
			throw e;
		}
		return encryptedString;
	}

	/**
	 * Returns decrypted form of the string in input
	 *
	 * @param strToDecrypt
	 * @return String
	 */
	public static String decrypt(String strToDecrypt) {
		String decryptedString = null;
		try {
			setKey(secret);
			Cipher cipher = Cipher.getInstance("AES/ECB/PKCS5PADDING");
			cipher.init(Cipher.DECRYPT_MODE, secretKey);
			decryptedString = new String(cipher.doFinal(new BASE64Decoder().decodeBuffer(strToDecrypt)));
		} catch (Exception e) {
			logger.error("Error while decrypting: " + e.toString());
		}
		return decryptedString;
	}
}
