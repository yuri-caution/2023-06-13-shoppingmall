<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <title>상품등록</title>
    <script>
        function CheckAddProduct() {
            var productId = document.getElementById("productId");
            var name = document.getElementById("name");
            var unitPrice = document.getElementById("unitPrice");
            var unitsInStock = document.getElementById("unitsInStock");
            //아이디체크
            if(!check(/^P[0-9]{4,11}$/, productId,
                    "[상품 코드]\nP와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 P로 시작하세요."))
                    return false;
            //상품명체크
            if(name.value.length < 4 || name.value.length > 12){
                alert("[상품명]\n최소 4자에서 최대 50자까지 입력하세요.");
                name.select();
                name.focus();
                return false;
            }
            //가격체크
            if(unitPrice.value.length == 0 || isNaN(unitPrice.value)){
                alert("[가격]\n숫자만 입력하세요.");
                unitPrice.select();
                unitPrice.focus();
                return false;
            }
            if(unitPrice.value < 0){
                alert("[가격]\n음수를 입력할 수 없습니다.");
                unitPrice.select();
                unitPrice.focus();
                return false;
            } else if (!check(/^\d+(?:[.]?[\d]?[\d])?$/, unitPrice,
                    "[가격]\n소수점 둘째 자리까지만 입력하세요."))
                return false
            //재고체크
            if (isNaN(unitsInStock.value)){
                alert("[재고 수]\n숫자만 입력하세요.");
                unitsInStock.select();
                unitsInStock.focus();
                return false;
            }

            function check(regExp, e, msg){
                if (regExp.test(e.value)){
                    return true;
                }
                alert(msg);
                e.select();
                e.focus();
                return false;
            }

            document.newProduct.submit()
        }

    </script>
</head>
<body>
    <%@ include file="menu.jsp" %>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-6">상품 등록</h1>
        </div>
    </div>

    <div class="container">
        <form name="newProduct" action="processAddProduct.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
            <div class="form-group row">
                <label class="col-sm-2">상품코드</label>
                <div class="col-sm-3">
                    <input type="text" id="productId" name="productId" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <lable class="col-sm-2">상품명</lable>
                <div class="col-sm-3">
                    <input type="text" id="name" name="name" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <lable class="col-sm-2">가 격</lable>
                <div class="col-sm-3">
                    <input type="text" id="unitPrice" name="unitPrice" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <lable class="col-sm-2">상세정보</lable>
                <div class="col-sm-5">
                    <textarea name="description" cols="50" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <div class="form-group row">
                <lable class="col-sm-2">제조사</lable>
                <div class="col-sm-3">
                    <input type="text" name="manufacturer" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <lable class="col-sm-2">분 류</lable>
                <div class="col-sm-3">
                    <input type="text" name="category" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <lable class="col-sm-2">재 고 수</lable>
                <div class="col-sm-3">
                    <input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <lable class="col-sm-2">상 태</lable>
                <div class="col-sm-5">
                    <input type="radio"  name="condition" value="New">신규 제품
                    <input type="radio"  name="condition" value="Old">중고 제품
                    <input type="radio"  name="condition" value="Refurbished">재생 제품
                </div>
            </div>
            <div class="form-group row">
                <lable class="col-sm-2">이미지</lable>
                <div class="col-sm-5">
                    <input type="file" name="productImage" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="button" class="btn btn-primary" value="상품 등록" onclick="CheckAddProduct()">
                </div>
            </div>
        </form>
    </div>
</body>
</html>