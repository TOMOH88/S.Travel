﻿package com.travelmaker.stravel.owner.model.service;

import java.util.ArrayList;

import com.travelmaker.stravel.common.PagingVo;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;
import com.travelmaker.stravel.owner.model.vo.OwnerPaging;

public interface OwnerService {

	ArrayList<Owner> selectRoomList(OwnerPaging paging);

	ArrayList<OwnerImg> selectOwnerImg();

	int selectOwnerTotal();

	ArrayList<Owner> selectRoomList1(OwnerPaging paging, String search);

	int selectOwnerTotal1(OwnerPaging paging);

	int insertOwner(Owner ow);

	Owner selectOLogin(Owner ow);
	int updateAddress(Owner owner);

	int insertOwnerImg(OwnerImg ownerImg);

}
