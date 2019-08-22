package com.armor.mblog.base.lang;

/**
 * 0
 * @author wcm
 *
 */
public class ArmorException extends RuntimeException {
	private static final long serialVersionUID = -7443213283905815106L;
	private int code;

	public ArmorException() {
	}
	
	/**
	 *
	 * @param code 错误代码
	 */
	public ArmorException(int code) {
		super("code=" + code);
		this.code = code;
	}

	/**
	 *
	 * @param message 错误消息
	 */
	public ArmorException(String message) {
		super(message);
	}

	/**
	 *
	 * @param cause 捕获的异常
	 */
	public ArmorException(Throwable cause) {
		super(cause);
	}

	/**
	 *
	 * @param message 错误消息
	 * @param cause 捕获的异常
	 */
	public ArmorException(String message, Throwable cause) {
		super(message, cause);
	}
	
	/**
	 *
	 * @param code 错误代码
	 * @param message 错误消息
	 */
	public ArmorException(int code, String message) {
		super(message);
		this.code = code;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}
}
