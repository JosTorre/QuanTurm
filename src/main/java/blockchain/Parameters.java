package blockchain;


public class Parameters {
	
	// default values
	private int ValidationFees = 1; // reward received by validator
	private int SignaturesThreshold = 5; // minimum number of signatures to accept a block
	private int Alpha = 5; // upper limit of attempts to search for validators
	private int Levels = 3; // length of nameID (levels of skip graph)
	private int InitialBalance = 20; // balance to start with at launch
	private int TxMin = 2; // minimum number of Tx in a block
	private boolean Mode = true; // honest or malicious
	private int Token = 20; // a token is a representation of any quantity of an asset which the node owns
	private boolean Chain = false; // Mode of lightchain (false -> original || true -> Smartcontract)
	public final boolean CONTRACT_MODE = true; // Alias name for True.
	
	public Parameters() {
		
	}

	public int getValidationFees() {
		return ValidationFees;
	}

	public void setValidationFees(int validationFees) {
		ValidationFees = validationFees;
	}

	public int getSignaturesThreshold() {
		return SignaturesThreshold;
	}

	public void setSignaturesThreshold(int signaturesThreshold) {
		SignaturesThreshold = signaturesThreshold;
	}

	public int getAlpha() {
		return Alpha;
	}

	public void setAlpha(int alpha) {
		Alpha = alpha;
	}

	public int getLevels() {
		return Levels;
	}

	public void setLevels(int levels) {
		Levels = levels;
	}

	public int getInitialBalance() {
		return InitialBalance;
	}

	public void setInitialBalance(int initialBalance) {
		InitialBalance = initialBalance;
	}

	public int getTxMin() {
		return TxMin;
	}

	public void setTxMin(int txMin) {
		TxMin = txMin;
	}

	public boolean getMode() {
		return Mode;
	}

	public void setMode(boolean mode) {
		Mode = mode;
	}

	// Is used to set the functionality of the simulation (either lightchain with smart-contract mode or original lightchain mode)
	public void setChain(boolean chain) {
        Chain = chain;
    }

	// Is used to get the functionality of the simulation (either lightchain with smart-contract mode or original lightchain mode)
    public boolean getChain() {
        return Chain;
    }

	public void setInitialToken(int token) {
		Token = token;
	}
	public int getInitialToken() {
		return Token;
	}


	@Override
	public String toString() {
		return "Parameters: \n" +
				"ValidationFees= " + ValidationFees +
				"\nSignaturesThreshold= " + SignaturesThreshold +
				"\nAlpha= " + Alpha +
				"\nLevels= " + Levels +
				"\nInitialBalance= " + InitialBalance +
				"\nTxMin= " + TxMin +
				"\nMode= " + Mode +
				"\nTokens= " + Token +
				"\nContractMode= "+ Chain +
				'\n';
	}
}
