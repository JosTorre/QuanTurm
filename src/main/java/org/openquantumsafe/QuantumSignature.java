package org.openquantumsafe;

import org.openquantumsafe.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.io.IOException;

public class QuantumSignature {

	private static String sig_name = "Falcon-1024";
	private Signature signer = new Signature(sig_name);
	private byte[] signer_keys = new byte[30];
        private byte[] privateKey = new byte[30];
        private byte[] publicKey = new byte[30];
	

	public byte[] signString(String text) {
               	    publicKey = signer.generate_keypair();
                    privateKey = signer.export_secret_key();
                    signer.print_details();
		    byte[] message = text.getBytes();
		    byte[] signature = signer.sign(message);
		    System.out.println("Signed Bytes: " + signature);
		    return signature;
	}
}
