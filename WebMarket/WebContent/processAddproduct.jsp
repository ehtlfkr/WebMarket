<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.product"%>
<%@ page import="dao.productlist"%>

<%
	request.setCharacterEncoding("utf-8");

	String folder = "C:\\Users\\USER\\workspace\\WebMarket\\WebContent\\images";
	int maxsize = 5 * 1024 * 1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, folder, maxsize, encType, new DefaultFileRenamePolicy());
	
	
	String productId = multi.getParameter("productId");
	String pname = multi.getParameter("pname");
	String unitPrice = multi.getParameter("unitPrice");
	String description = multi.getParameter("description");
	String manufacturer = multi.getParameter("manufacturer");
	String category = multi.getParameter("category");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");
	String image = multi.getFilesystemName("image");
	
	Integer price;
	
	if(unitPrice.isEmpty())
		price = 0;
	
	else 
		price = Integer.valueOf(unitPrice);
	
	long stock;
	
	if(unitsInStock.isEmpty())
		stock = 0;
	
	else 
		stock = Long.valueOf(unitsInStock);
	
	
	productlist dao = productlist.getInstance();
	
	
	product newProduct = new product();
	
	newProduct.setProductId(productId);
	newProduct.setCategory(category);
	newProduct.setCondition(condition);
	newProduct.setDescription(description);
	newProduct.setImage(image);
	newProduct.setManufacturer(manufacturer);
	newProduct.setPname(pname);
	newProduct.setUnitPrice(price);
	newProduct.setUnitsInStock(stock);
	
	dao.addProduct(newProduct);
	
	
	response.sendRedirect("products.jsp");

%>