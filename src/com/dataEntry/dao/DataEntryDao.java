/**
 * 
 */
package com.dataEntry.dao;


import org.eclipse.jdt.core.compiler.InvalidInputException;

import com.dataEntry.entity.DataEntry;

/**
 * @author KUSH
 *
 */
public interface DataEntryDao {

	void addData(DataEntry entry) throws InvalidInputException;

}
