package com.dataEntry.service;

import org.eclipse.jdt.core.compiler.InvalidInputException;

import com.dataEntry.dao.DataEntryDao;
import com.dataEntry.daoImpl.DataEntryDaoImpl;
import com.dataEntry.entity.DataEntry;

public class DataEntryService {
	DataEntryDao dao;
	
	public void addData(DataEntry entry) throws InvalidInputException {
		
		dao = new DataEntryDaoImpl();
		try {
			dao.addData(entry);
		} catch (Exception e) {
			throw new InvalidInputException("Error Occured");
		}
	}

}
