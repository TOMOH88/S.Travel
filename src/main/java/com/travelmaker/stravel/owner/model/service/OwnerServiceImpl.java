package com.travelmaker.stravel.owner.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.stravel.owner.model.dao.OwnerDao;
import com.travelmaker.stravel.owner.model.vo.Owner;
import com.travelmaker.stravel.owner.model.vo.OwnerImg;
import com.travelmaker.stravel.owner.model.vo.OwnerPaging;

@Service("os")
public class OwnerServiceImpl implements OwnerService{
	
	@Autowired
	private SqlSessionTemplate mybatisSession;
	
	@Autowired
	private OwnerDao od;

	@Override
	public ArrayList<Owner> selectRoomList(OwnerPaging paging) {
		ArrayList<Owner> list = od.selectRoomList(mybatisSession,paging);
		return list;
	}

	@Override
	public ArrayList<OwnerImg> selectOwnerImg() {
		ArrayList<OwnerImg> ownerImgList = od.selectOwnerImg(mybatisSession);
		return ownerImgList;
	}

	@Override
	public int selectOwnerTotal() {
		// TODO Auto-generated method stub
		return od.selectOwnerTotal(mybatisSession);
	}

	@Override
	public ArrayList<Owner> selectRoomList1(OwnerPaging paging, String search) {
		// TODO Auto-generated method stub
		return od.selectRoomList1(mybatisSession, paging , search);
	}

	@Override
	public int selectOwnerTotal1(String search) {
		// TODO Auto-generated method stub
		return od.selectOwnerTotal1(mybatisSession,search);
	}

}
