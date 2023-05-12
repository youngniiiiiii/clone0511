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
        <h1>�α���</h1><br/>

        <form id="login_form" class="form-horizontal text-left well">
            <div class="form-group">
                <label class="control-label col-sm-2" for="id">���̵�:</label>
                <div class="col-sm-8">
                    <input type="text" name="id" class="form-control" id="id" placeholder="Enter ID">
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="pwd">��й�ȣ:</label>
                <div class="col-sm-8">
                    <input type="password" name="pwd" class="form-control" id="pwd" placeholder="Enter password">
                </div>
            </div>
            <div class="form-group" >
                <div class="col-sm-offset-2 col-sm-8">
                    <div class="checkbox">
                        <label><input type="checkbox"> ���̵� ����ϱ� </label>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button id="login_button" class="btn btn-default">�α��� �ϱ�</button>
                </div>
            </div>
        </form>
    </div>
</div>

<style>
    .container {
        width: 100%
    }
    #login_button {
        float: right;
    }
    #login_button {
        width: 150px;
        height: 30px;
        border-radius: 0;
        font-size: 12px;
        background-color: white;
        vertical-align: middle;
        margin-right: 20px;
    }
    #login_button:hover {
        color: white;
        background-color: #222222;
    }

</style>