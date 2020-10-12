package com.example.de_tai_di_dong.main;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.bumptech.glide.Glide;
import com.example.de_tai_di_dong.R;
import com.example.de_tai_di_dong.getData.CallAPI;
import com.example.de_tai_di_dong.getData.GetDataCart;
import com.example.de_tai_di_dong.getData.GetData_Product;
import com.example.de_tai_di_dong.model.ResultCartItem;
import com.example.de_tai_di_dong.model.SanPham;
import java.util.ArrayList;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class SanPhamActivity extends AppCompatActivity {
    int idKH = 0, idSP = 0, sl = 0;
    TextView tvInfoProduct;
    EditText etSL;
    ImageView img_sp;
    ImageButton btn_them, btn_tru;
    Button btnThoat, btnChonMua;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_san_pham);
        idKH = getIntent().getIntExtra("idKH", idKH);
        idSP = getIntent().getIntExtra("idSP", idSP);
        setControl();
        setEvent();

    }

    private void setEvent() {

        GetData_Product service = CallAPI.getRetrofitInstance().create(GetData_Product.class);
        Call<ArrayList<SanPham>> call = service.getProduct(idSP);
        call.enqueue(new Callback<ArrayList<SanPham>>() {
            @Override
            public void onResponse(Call<ArrayList<SanPham>> call, Response<ArrayList<SanPham>> response) {
                String info ="Tên sản phẩm:" +response.body().get(0).getName() + "\nMàu:" + response.body().get(0).getColor() +"\nSize:"+  response.body().get(0).getSize() ;
                tvInfoProduct.setText(info);
                Glide.with(SanPhamActivity.this).load(response.body().get(0).getImage1()).into(img_sp);
            }

            @Override
            public void onFailure(Call<ArrayList<SanPham>> call, Throwable t) {

            }
        });

        btn_them.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sl = Integer.parseInt(etSL.getText().toString()) + 1;
                etSL.setText(sl + "");
            //  sl = Integer.parseInt(etSL.getText().toString())+1;

            }
        });
        btn_tru.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                sl = Integer.parseInt(etSL.getText().toString()) - 1;
                if (sl <= 0) {
                    etSL.setText("1");
                    Toast.makeText(SanPhamActivity.this, "Số lượng sản phẩm lớn hơn 0", Toast.LENGTH_LONG).show();
                } else {
                    etSL.setText(sl + "");
                }
                // sl = Integer.parseInt(etSL.getText().toString())-1;
            }
        });

        //xử lý sự kiện thoát k mua hàng
        btnThoat.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {

                Intent intent = new Intent(SanPhamActivity.this, MainActivity.class);
                startActivity(intent);
            }
        });
        // xử lý sự kiện mua hàng
        btnChonMua.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (idKH == 0) {
                    Intent intent = new Intent(SanPhamActivity.this, LoginActivity.class);
                    startActivity(intent);
                }
                if (idKH != 0) {
                    GetDataCart service = CallAPI.getRetrofitInstance().create(GetDataCart.class);
                    Call<ArrayList<ResultCartItem>> call = service.getCartItem(idKH, idSP, sl);
                    call.enqueue(new Callback<ArrayList<ResultCartItem>>() {
                        @Override
                        public void onResponse(Call<ArrayList<ResultCartItem>> call, Response<ArrayList<ResultCartItem>> response) {
                            assert response.body() != null;
                            if (response.body().get(0).getResult() != 0) {
                                Toast.makeText(SanPhamActivity.this, "Thêm sản phẩm vào giỏ hàng thành công!!", Toast.LENGTH_LONG).show();
                                Intent intent = new Intent(SanPhamActivity.this, GioHangActivity.class);
                                intent.putExtra("idKH", idKH);
                                startActivity(intent);
                            } else {
                                Toast.makeText(SanPhamActivity.this, "Không thể thêm sản phẩm vào giỏ hàng!!", Toast.LENGTH_LONG).show();

                            }
                        }

                        @Override
                        public void onFailure(Call<ArrayList<ResultCartItem>> call, Throwable t) {

                        }
                    });


                }
            }
        });


    }

    private void setControl() {
        tvInfoProduct = findViewById(R.id.tv_ct_sp);
        img_sp = findViewById(R.id.img_sp);
        etSL = findViewById(R.id.etSL);
        btnChonMua = findViewById(R.id.btn_mua);
        btn_them = findViewById(R.id.btn_them);
        btn_tru = findViewById(R.id.btn_tru);
        btnThoat = findViewById(R.id.btn_thoat);

    }
}