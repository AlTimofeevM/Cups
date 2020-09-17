<#macro login path isRegisterForm>
    <form action="${path}" method="post">
        <div class="form-group row">
            <label class="col-sm-4 col-form-label"></label>
            <div class="col-sm-4">
                <input type="text" class="form-control" name="username" placeholder="User name"/>
            </div>
        </div>
        <div class="form-group row">
            <label  class="col-sm-4 col-form-label"></label>
            <div class="col-sm-4">
                <input type="password" class="form-control" name="password" placeholder="Password"/>
            </div>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-dark" type="submit">Войти</button>
        <br/>
        <br/>
        <#if !isRegisterForm><a href="/reg">Зарегестрироваться</a></#if>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <input type="submit" value="Sign Out"/>
    </form>
</#macro>