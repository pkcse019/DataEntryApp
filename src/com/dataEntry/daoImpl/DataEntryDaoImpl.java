/**
 * 
 */
package com.dataEntry.daoImpl;

import com.dataEntry.dao.DataEntryDao;
import com.dataEntry.entity.DataEntry;

/**
 * @author KUSH
 *
 */
public class DataEntryDaoImpl implements DataEntryDao {

	@Override
	public void addData(DataEntry entry) {
		
		//here we can store  these all entered data to the DB.
		// Just for ref.. I am printing all the Values.
		
		System.out.println("sku :- " + entry.getSku());
		System.out.println("productName :-" + entry.getProductName());
		System.out.println("productIdType :- " + entry.getProductIdType());
		System.out.println("productId :- " + entry.getProductId());
		System.out.println("shortDescription  :- " + entry.getShortDescription());
		System.out.println("keyFeatures :-  "+ entry.getKeyFeatures());
		System.out.println("unitsPerConsumerUnit :-  " + entry.getUnitsPerConsumerUnit());
		System.out.println("brand :-  "+ entry.getBrand());
		System.out.println("manufacturer :-  "+ entry.getManufacturer());
		System.out.println("manufacturerPartNumber :-  "+ entry.getManufacturerPartNumber());
		System.out.println("modelNumber :-  "+ entry.getModelNumber());
		System.out.println("msrp :-  "+ entry.getMsrp());
		System.out.println("flavor :-  "+ entry.getFlavor());
		System.out.println("isReadyToEat :-  "+ entry.getIsReadyToEat());
		System.out.println("count :-  "+ entry.getCount());
		System.out.println("size :-  "+ entry.getSize());

		
		
	}
	
	

}
