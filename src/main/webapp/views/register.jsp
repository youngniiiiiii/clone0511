<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<script>

    $(function () {
        login_form.init();
    });

</script>

<div class="col-sm-8">
    <div class="container">
        <h1>회원가입</h1><br/>

        <form id="register_form" class="form-horizontal text-left well">
            <div class="form-group">
                <label class="control-label col-sm-2" for="id">아이디:</label>
                <div class="col-sm-8">
                    <input type="text" name="id" class="form-control" id="id" placeholder="아이디를 입력하세요.">
                </div>
                <div class="col-sm-10">
                    <span id="check_id" class="bg-danger"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">비밀번호:</label>
                <div class="col-sm-8">
                    <input type="password" name="pwd" class="form-control" id="pwd" placeholder="비밀번호를 입력하세요">
                </div>
            </div>

            <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">이름:</label>
                <div class="col-sm-8">
                    <input type="text" name="name" class="form-control" id="name" placeholder="이름을 입력하세요">
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button id="login_button" class="btn btn-default">회원가입 하기</button>
                </div>
            </div>
        </form>
    </div>
</div>

<style>
    .container {
        width: 100%
    }
    #register_btn {
        float: right;
    }
    #register_btn {
        width: 150px;
        height: 30px;
        border-radius: 0;
        font-size: 12px;
        background-color: white;
        vertical-align: middle;
        margin-right: 20px;
    }
    #register_btn:hover {
        color: white;
        background-color: #222222;
    }

</style>
