<#import "parts/page.ftlh" as p>

<@p.page>
    <#include "parts/navbar.ftlh">
    <form action="/cup" method="POST" enctype="multipart/form-data">
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Название</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="title"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Описание</label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="description"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-4 col-form-label">Загрузить изображение</label>
            <div class="col-sm-4">
                <div class="upload">
                    <input type="file" name="files" multiple>
                    <p>Drag your files here or click in this area.</p>
                </div>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-dark" type="submit">Создать</button>
        <br/>
        <br/>
    </form>
</@p.page>

<style>
    body{
        background: gray;
    }
    .upload {
        position: absolute;
        top: 50%;
        left: 50%;
        margin-top: 100px;
        margin-left: -250px;
        width: 500px;
        height: 200px;
        border: 4px dashed #fff;
    }
    .upload p{
        margin-top: -100px;
        position: absolute;
        width: 100%;
        height: 100%;
        text-align: center;
        line-height: 170px;
        color: #ffffff;
        font-family: Arial;
    }
    .upload  input{
        margin: 0;
        padding: 0;
        width: 100%;
        height: 100%;
        outline: none;
        opacity: 0;
    }
</style>

<script>
    $(document).ready(function(){
        $('.upload input').change(function () {
            $('.upload p').text(this.files.length + " file(s) selected");
        });
    });
</script>