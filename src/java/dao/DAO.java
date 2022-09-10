 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author T u a n A n h
 */
public class DAO {

    Connection conn = null;//để kết nối sql
    PreparedStatement ps = null;//ném query từ netbean sang sql
    ResultSet rs = null;//nhận kết quả trả về

    //Load Product
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();//tạo 1 array lưu dữ liệu
        String query = "select * from product";
        try {
            conn = new DBContext().getConnection();//mo ket noi
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {//get réult theo từng cột           
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    //Load Category
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();//tạo 1 array lưu dữ liệu
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();//mo ket noi
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {//get result theo từng cột           
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }

        return list;
    }

    //return new Product
    public Product getLast() {
        String query = "select top 1 * from product\n"
                + "order by id desc";
        try {
            conn = new DBContext().getConnection();//mo ket noi
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    //hiện loại sản phẩm khi click vào danh mục
    public List<Product> getProductByCID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where cateID = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);//chuyền cid vào dấu ?
            rs = ps.executeQuery();
            while (rs.next()) {
                //thực hiện query lấy result
                //đẩy result vào list 
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    //hien chi tiet tung san pham khi click
    public Product getProductByID(String id) {
        String query = "select * from product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi
            ps = conn.prepareStatement(query);
            ps.setString(1, id);//chuyền cid vào dấu ?
            rs = ps.executeQuery();
            while (rs.next()) {
                //thực hiện query lấy result
                //đẩy result vào list 
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;//ko tim dc se return ve null
    }

    //hàm search theo name
    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where [name] like ?";

        try {
            conn = new DBContext().getConnection();//mo ket noi
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");//chuyền txtSearch vào dấu ?.cau lenh can % bao quanh
            rs = ps.executeQuery();
            while (rs.next()) {
                //thực hiện query lấy result
                //đẩy result vào list 
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;//ko tim dc se return ve null
    }

    //Login
    public Account login(String user, String pass) {
        String query = "select * from account\n"
                + "where [user] = ?\n"
                + "and pass = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi
            ps = conn.prepareStatement(query);
            ps.setString(1, user);//day vao ?
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }

        return null;
    }

    //check xem ac moi co trung ko
    public Account checkAccountExist(String user) {
        String query = "select * from account\n"
                + "where [user] = ?\n";
        try {
            conn = new DBContext().getConnection();//mo ket noi
            ps = conn.prepareStatement(query);
            ps.setString(1, user);//day vao ?
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }

        return null;
    }

    //Ham de signup, ko can result chi insert
    public void singup(String user, String pass) {
        String query = "insert into account\n"
                + "values(?,?,0,0)";
        try {
            conn = new DBContext().getConnection();//mo ket noi
            ps = conn.prepareStatement(query);
            ps.setString(1, user);//day vao ?
            ps.setString(2, pass);//day vao ?
            ps.executeUpdate();//chi update len sql
        } catch (Exception e) {
        }

    }

    //load product by Seller
    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where sell_ID = ?";

        try {
            conn = new DBContext().getConnection();//mo ket noi
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);//chuyền cid vào dấu ?
            rs = ps.executeQuery();
            while (rs.next()) {
                //thực hiện query lấy result
                //đẩy result vào list 
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    //delete product
    public void deleteProduct(String pid) {
        String query = "delete from product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //add new product
    public void insertProduct(String name, String image, String price,
            String title, String description, String category, int sid) {
        String query = "INSERT [dbo].[product] \n"
                + "([name], [image], [price], [title], [description], [cateID], [sell_ID])\n"
                + "VALUES(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setInt(7, sid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //edit product
    public void editProduct(String name, String image, String price,
            String title, String description, String category, String pid) {
        String query = "update product\n"
                + "set [name] = ?,\n"
                + "[image] = ?,\n"
                + "price = ?,\n"
                + "title = ?,\n"
                + "[description] = ?,\n"
                + "cateID = ?\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setString(7, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
//    public List<Product> getALl() {
//        List<Product> list = new ArrayList<>();
//        String query = "select * from product";
//        try {
//            conn = new DBContext().getConnection(); //mo ket noi toi sql
//            ps = conn.prepareStatement(query);//nem cau lenh query sang sql
//            rs = ps.executeQuery();//chay cau lenh query, nhan ket qua tra ve
//            while (rs.next()) {
//                list.add(new Product(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getDouble(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getInt(7)));
//            }
//
//        } catch (Exception e) {
//        }
//        return list;
//    }
    public List<Account> getALLAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from account";
        try {
            conn = new DBContext().getConnection(); //mo ket noi toi sql
            ps = conn.prepareStatement(query);//nem cau lenh query sang sql
            rs = ps.executeQuery();//chay cau lenh query, nhan ket qua tra ve
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)));
            }

        } catch (Exception e) {
        }
        return list;
    }
    public List<Category> getALLCate(){
        List<Category> list = new ArrayList<>();
        String query = "select * from category";
        try {
            conn = new DBContext().getConnection(); //mo ket noi toi sql
            ps = conn.prepareStatement(query);//nem cau lenh query sang sql
            rs = ps.executeQuery();//chay cau lenh query, nhan ket qua tra ve
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

//    public Product getLast() {
//        String query = "select top 1 * from product\n"
//                + "order by id desc";
//        try {
//            conn = new DBContext().getConnection(); //mo ket noi toi sql
//            ps = conn.prepareStatement(query);//nem cau lenh query sang sql
//            rs = ps.executeQuery();//chay cau lenh query, nhan ket qua tra ve
//            while(rs.next()){
//                return new Product(rs.getInt(1),
//                        rs.getString(2),
//                        rs.getString(3),
//                        rs.getDouble(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getInt(7));
//            }
//        } catch (Exception e) {
//        }
//        return null;
//    }

//    kiem tra ham da chay hay chua
    public static void main(String[] args) {
        DAO dao = new DAO();
//        List<Product> list = dao.getAllProduct();
//        List<Category> listC = dao.getAllCategory();
        List<Product> listS = dao.getProductBySellID(55);
        for (Product o : listS) {
            System.out.println(o);
            break;
//        Account l = dao.login("Adam", "123456");
//        System.out.println(l);
        }
    }
}
