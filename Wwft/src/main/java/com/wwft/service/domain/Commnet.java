package com.wwft.service.domain;

import java.sql.Date;

public class Commnet {
	
	private int commentNo;
	private String commentWriter;
	private Date commentRegDate;
	private String commentDetail;
	private int commentPostNo;
	private int commentTreeNo;
	

	public Commnet() {
		// TODO Auto-generated constructor stub
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public String getCommentWriter() {
		return commentWriter;
	}

	public void setCommentWriter(String commentWriter) {
		this.commentWriter = commentWriter;
	}

	public Date getCommentRegDate() {
		return commentRegDate;
	}

	public void setCommentRegDate(Date commentRegDate) {
		this.commentRegDate = commentRegDate;
	}

	public String getCommentDetail() {
		return commentDetail;
	}

	public void setCommentDetail(String commentDetail) {
		this.commentDetail = commentDetail;
	}

	public int getCommentPostNo() {
		return commentPostNo;
	}

	public void setCommentPostNo(int commentPostNo) {
		this.commentPostNo = commentPostNo;
	}

	public int getCommentTreeNo() {
		return commentTreeNo;
	}

	public void setCommentTreeNo(int commentTreeNo) {
		this.commentTreeNo = commentTreeNo;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Commnet [commentNo=");
		builder.append(commentNo);
		builder.append(", commentWriter=");
		builder.append(commentWriter);
		builder.append(", commentRegDate=");
		builder.append(commentRegDate);
		builder.append(", commentDetail=");
		builder.append(commentDetail);
		builder.append(", commentPostNo=");
		builder.append(commentPostNo);
		builder.append(", commentTreeNo=");
		builder.append(commentTreeNo);
		builder.append("]");
		return builder.toString();
	}

	

}
