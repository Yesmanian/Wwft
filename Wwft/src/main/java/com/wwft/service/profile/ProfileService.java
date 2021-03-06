package com.wwft.service.profile;

import java.util.Map;

import com.wwft.common.web.Search;
import com.wwft.service.domain.Profile;

public interface ProfileService {

	// INSERT
	public void addProfile(Profile profile) throws Exception ;
	
	// SELECT ONE
	public Profile getProfile(int profileno) throws Exception ;

	// SELECT LIST
	public Map<String , Object> getProfileList(Search search) throws Exception ;

	// UPDATE
	public void updateProfile(Profile profile) throws Exception ;

	// UPDATE
	public void removeProfile(int profileno) throws Exception ;
	
	
}

