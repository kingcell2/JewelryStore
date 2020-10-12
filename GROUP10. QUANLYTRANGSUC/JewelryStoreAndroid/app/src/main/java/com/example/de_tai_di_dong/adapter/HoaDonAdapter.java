package com.example.de_tai_di_dong.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.EditText;

import androidx.constraintlayout.widget.ConstraintLayout;

import com.example.de_tai_di_dong.R;
import com.example.de_tai_di_dong.model.Orders;

import java.util.ArrayList;

public class HoaDonAdapter extends BaseAdapter {
    ArrayList<Orders> listOrders;
    Context context;
    int idKH;
    public HoaDonAdapter( ArrayList<Orders>listOrders, Context context, int idKH){
        this.context=context;
        this.listOrders=listOrders;
        this.idKH=idKH;
    }
    @Override
    public int getCount() {
        return listOrders.size();
    }

    @Override
    public Object getItem(int position) {
        return 0;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    private class ViewHolder{
        EditText name;
        EditText date;
        EditText phone;
        EditText email;
        EditText address;
        EditText note;
        ConstraintLayout listHD;

    }

    @Override
    public View getView(int position, View view, ViewGroup parent) {
        final  ViewHolder holder;
        if( view == null){
            view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_hoa_don, parent, false);
            holder = new ViewHolder();
            holder.name= view.findViewById(R.id.nameHD);
            holder.date=view.findViewById(R.id.ngayHD);
            holder.phone=view.findViewById(R.id.phoneHD);
            holder.email=view.findViewById(R.id.emailHD);
            holder.address =view.findViewById(R.id.addressHD);
            holder.note=view.findViewById(R.id.noteHD);
            holder.listHD=view.findViewById(R.id.listHD);
            view.setTag(holder);
        }else holder=(HoaDonAdapter.ViewHolder)view.getTag();
        final  Orders orders = listOrders.get(position);
        holder.date.setText(orders.getBuyingDay()+"");
        holder.name.setText(orders.getName());
        holder.phone.setText(orders.getPhone());
        holder.email.setText(orders.getEmail());
        holder.address.setText(orders.getAddress());
        holder.note.setText(orders.getNote());
        return view;
    }
}
