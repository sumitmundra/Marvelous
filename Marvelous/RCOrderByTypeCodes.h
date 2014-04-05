//
//  RCOrderByTypeCodes.h
//  Marvelous
//
//  Created by Javier Cicchelli on 01/04/14.
//  Copyright (c) 2014 Rock & Code. All rights reserved.
//

typedef NS_ENUM(NSInteger, RCOrderByTypeCodes) {
	RCOrderByTypeCodeUndefined = 0,
	RCOrderByTypeCodeIdentifierAscending,
	RCOrderByTypeCodeIdentifierDescending,
	RCOrderByTypeCodeNameAscending,
	RCOrderByTypeCodeNameDescending,
	RCOrderByTypeCodeDateModifiedAscending,
	RCOrderByTypeCodeDateModifiedDescending,
	RCOrderByTypeCodeStartDateAscending,
	RCOrderByTypeCodeStartDateDescending
};