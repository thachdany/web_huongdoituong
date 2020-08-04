using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using ClassLibrary1; 
namespace XuLy
{
    public class Lop_Xl
    {
        DataClasses1DataContext db = new DataClasses1DataContext();

/****bmon*********/
        public List<tlb_bomon> hienthibm()
         {
            return db.tlb_bomons.ToList();
           }

         public tlb_bomon timbm(string ma)
        {
            return db.tlb_bomons.Where(x => x.ma_bm == ma).FirstOrDefault();

        }
        public string timBm_by_ten(string ten)
        {
            string ma = "";
            ma = db.tlb_bomons.Where(x => x.ten_bn == ten).Select(x => x.ma_bm).FirstOrDefault();
            return ma;
        }
        public List<tlb_bomon> Search(string x)
        {
            return db.tlb_bomons.Where(nv => nv.ten_bn.Contains(x)).ToList();
        }

        public bool thembm(string mabm, string ten)
        {
            tlb_bomon tb = new tlb_bomon();
            tb.ma_bm = mabm;
            tb.ten_bn = ten;
            db.tlb_bomons.InsertOnSubmit(tb);


           
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }



        public bool updatebm(string ma, string ten)
        {
            tlb_bomon bm = timbm(ma);
            bm.ten_bn = ten;
            try
            {
                db.SubmitChanges();
            }
            catch
            {
                return false;
            }
            return true;

        }


        public bool deletebm(string ma, string ten)
        {
            tlb_bomon bm = timbm(ma);
            db.tlb_bomons.DeleteOnSubmit(bm);
            try
            {
                db.SubmitChanges();
            }
            catch
            {
                return false;
            }
            return true;

        }


     


        /* ######################## nganh########################*/

        public List<tlb_nganh> hienthinganh()
        {
            return db.tlb_nganhs.ToList();
        }
        public tlb_nganh timnganh(string ma)
        {
            return db.tlb_nganhs.Where(x => x.ma_nganh== ma).FirstOrDefault();

        }

        public string timnganh_by_ten(string ten)
        {
            string ma = "";
            ma = db.tlb_nganhs.Where(x => x.ten_nganh == ten).Select(x => x.ma_nganh).FirstOrDefault();
            return ma;
        }
        public IQueryable Search_nganh(string x)
        {
            var kq =
                from nganh in db.tlb_nganhs
                from bm in db.tlb_bomons
                where nganh.ma_bm == bm.ma_bm && nganh.ten_nganh.Contains(x)
                select new
                {
                    nganh.ma_nganh,
                    nganh.ten_nganh,
                    bm.ten_bn
                };
            return kq;

        }

        public bool them_nganh(string ma, string ten, string ma_bm)
        {
            tlb_nganh tb = new tlb_nganh();
            tb.ma_nganh = ma;
            tb.ten_nganh = ten;
            tb.ma_bm = ma_bm;


            db.tlb_nganhs.InsertOnSubmit(tb);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }


        public bool xoa_nganh(string ma, string ten, string ma_bm)
        {
            tlb_nganh tb = timnganh(ma);
            

            db.tlb_nganhs.DeleteOnSubmit(tb);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }




        public bool update_nganh(string ma, string ten, string ma_bm)
        {
            tlb_nganh tb = timnganh(ma);

            tb.ten_nganh = ten;
            tb.ma_bm = ma_bm;
            
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }




        /*!####------------------lop---------------------------------*/
        public List<tlb_lop> henthilop()
        {
            return db.tlb_lops.ToList();
        }

        public IQueryable hienthi_lop_by_ten(string x)
        {
            var kq =
                from nganh in db.tlb_nganhs
                from bm in db.tlb_bomons
                where nganh.ma_bm == bm.ma_bm && nganh.ten_nganh.Contains(x)
                select new
                {
                    nganh.ma_nganh,
                    nganh.ten_nganh,
                    bm.ten_bn
                };
            return kq;

        }

        public tlb_lop timlop(string ma)
        {
            return db.tlb_lops.Where(x => x.MaLop == ma).FirstOrDefault();

        }



        public bool them_lop(string ma, string ten, string ma_bm)
        {
            tlb_lop tb = new tlb_lop();
            tb.MaLop = ma;
            tb.Tenlop = ten;
            tb.ma_nganh = ma_bm;

            db.tlb_lops.InsertOnSubmit(tb);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }

        public bool update_lop(string ma, string ten, string ma_bm)
        {
            tlb_lop tb = timlop(ma);
      
            tb.Tenlop = ten;
            tb.ma_nganh = ma_bm;

         
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }
        public bool xoa_lop(string ma, string ten, string ma_bm)
        {
            tlb_lop tb = timlop(ma);

            
            db.tlb_lops.DeleteOnSubmit(tb); 
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }


        public IQueryable Search_lop(string x)
        {
            var kq =
                from lop in db.tlb_lops
                from nganh in db.tlb_nganhs
                where lop.ma_nganh == nganh.ma_nganh && lop.Tenlop.Contains(x)
                select new
                {
                    lop.MaLop,
                    lop.Tenlop,
                    nganh.ten_nganh
                };
            return kq;

        }


        //###############################_________sinhvien___________##########

        public List<tlb_sinhvien> hienthisv()
        {

            return db.tlb_sinhviens.ToList();
        }

        public tlb_sinhvien SV(string hoten)
        {
            tlb_sinhvien SV = db.tlb_sinhviens.Where(s => s.TenSV == hoten).SingleOrDefault();
            return SV;
        }
        public tlb_user Login(String tentk, String mk)
        {
            tlb_user login = db.tlb_users.Where(s => s.tentk == tentk && s.mk == mk).SingleOrDefault();
            return login;
        }




        public tlb_sinhvien timten(String tentk)
        {
            tlb_sinhvien tim = db.tlb_sinhviens.Where(s => s.MaSV == tentk).SingleOrDefault();
            return tim;
        }
        public tlb_hocbong timhc(String tentk)
        {
            tlb_hocbong tim = db.tlb_hocbongs.Where(s => s.MaSV == tentk).SingleOrDefault();
            return tim;
        }
        public bool themsv(String msv, String ht, String namsinh, String gioitinh, String ml, String cvht, String dc)
        {
            tlb_sinhvien sv = new tlb_sinhvien();
            sv.MaSV = msv;
            sv.TenSV = ht;
            sv.Gioitinh = gioitinh;
            sv.NgaySinh = namsinh;
            sv.MaLop = ml;
            sv.TenCVHT = cvht;
            sv.DiaChi = dc;
            db.tlb_sinhviens.InsertOnSubmit(sv);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }
        public bool themdiem(String msv)
        {
            tlb_diemhk dhk = new tlb_diemhk();
            dhk.MSSV = msv;

            db.tlb_diemhks.InsertOnSubmit(dhk);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }
        public bool themdiemhk(String msv, String hk, String namhoc)
        {
            tlb_diemhk dhk = new tlb_diemhk();
            dhk.MSSV = msv;
            dhk.HK = hk;
            dhk.Namhoc = namhoc;

            db.tlb_diemhks.InsertOnSubmit(dhk);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }
        public tlb_diemhk timtrung(String ma, String hk, String nam)
        {
            tlb_diemhk timm = db.tlb_diemhks.Where(s => s.MSSV == ma && s.HK == hk && s.Namhoc == nam).SingleOrDefault();
            return timm;
        }

        public bool tuthemdiemhk(String lop, String hk, String namhoc)
        {

            foreach (var sv in db.tlb_sinhviens.Where(s => s.MaLop == lop))
            {


                var tam = timtrung(sv.MaSV, hk, namhoc);
                if (tam == null)
                {
                    themdiemhk(sv.MaSV.ToString(), hk, namhoc);
                }
            }
            return true;

        }
        public bool suaxeploai(String msv, String namhoc, String hk, string xeploai)
        {
            tlb_diemhk diem = timtheomssv(msv, hk);

            diem.Xeploai = xeploai;
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }



        public bool themuser(String msv, String mk, int quyen)
        {
            tlb_user user = new tlb_user();
            user.tentk = msv;
            user.mk = mk;
            user.quyen = quyen;

            db.tlb_users.InsertOnSubmit(user);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }
        public tlb_sinhvien timtheoma(String masv)
        {
            return db.tlb_sinhviens.Where(nv => nv.MaSV == masv).FirstOrDefault();
        }
        public tlb_diemhk timtheomssv(String mssv, String hocky)
        {
            return db.tlb_diemhks.Where(nv => nv.MSSV == mssv && nv.HK == hocky).SingleOrDefault();
        }
        public tlb_diemhk timtheomadiem(String mssv)
        {
            return db.tlb_diemhks.Where(nv => nv.MSSV == mssv).SingleOrDefault();
        }
        public tlb_user timtheotentk(String tentk)
        {
            return db.tlb_users.Where(nv => nv.tentk == tentk).FirstOrDefault();
        }
        public tlb_hocbong timmahb(String tentk)
        {
            return db.tlb_hocbongs.Where(nv => nv.MaSV == tentk).FirstOrDefault();
        }
        public bool xoadhk(String msv)
        {
            tlb_diemhk dhk = timtheomadiem(msv);
            db.tlb_diemhks.DeleteOnSubmit(dhk);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;
        }
        public bool xoauser(String tentk)
        {
            tlb_user msd = timtheotentk(tentk);
            db.tlb_users.DeleteOnSubmit(msd);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;
        }
        public bool suamk(String tentk, String mk)
        {
            tlb_user msd = timtheotentk(tentk);
            //tlb_user user = new tlb_user();

            msd.mk = mk;

            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }

        public bool xoasv(String msv, String ht, String namsinh, String gioitinh, String ml, String cvht, String dc)
        {

            tlb_sinhvien sv = timtheoma(msv);

            db.tlb_sinhviens.DeleteOnSubmit(sv);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }
        public bool xoahb(String tentk)
        {

            tlb_hocbong sv = timmahb(tentk);

            db.tlb_hocbongs.DeleteOnSubmit(sv);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }

        public bool suasv(String msv, String ht, String namsinh, String gioitinh, String ml, String cvht, String dc)
        {
            tlb_sinhvien sv = timtheoma(msv);

            sv.MaSV = msv;
            sv.TenSV = ht;
            sv.Gioitinh = gioitinh;
            sv.NgaySinh = namsinh;
            sv.MaLop = ml;
            sv.TenCVHT = cvht;
            sv.DiaChi = dc;

            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }
        public bool suadiem(String msv, String namhoc, String hk, double dtb, float drl, string xeploai)
        {
            tlb_diemhk diem = timtheomssv(msv, hk);

            diem.DiemTB = dtb;
            diem.DiemRL = drl;
            diem.Xeploai = xeploai;
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }
        public bool dkhocbong(String msv, String dkk, String hoancanh, String sdt)
        {
            tlb_hocbong hb = new tlb_hocbong();
            hb.MaSV = msv;
            hb.dienkhokhan = dkk;
            hb.hoancanh = hoancanh;
            hb.SDT = sdt;

            db.tlb_hocbongs.InsertOnSubmit(hb);
            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }
        public bool suahocbong(String msv, String hientrang)
        {
            tlb_hocbong diem = timmahb(msv);

            diem.MaSV = msv;
            diem.hientrang = hientrang;

            try
            {
                db.SubmitChanges();

            }
            catch
            {
                return false;
            }
            return true;

        }


    }
}
