package com.cnss.spring;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class EncryptPassword {
public String encryptPassword(String input) throws NoSuchAlgorithmException {

        MessageDigest md = MessageDigest.getInstance("sha1");
        byte[] messageDigest = md.digest(input.getBytes());
        BigInteger bigInt = new BigInteger(1, messageDigest);

        return bigInt.toString(16);
        }
}