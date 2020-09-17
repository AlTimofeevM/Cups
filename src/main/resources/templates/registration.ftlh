<#import "parts/page.ftlh" as p>
<#import "parts/login.ftlh" as l>

<@p.page>
    <#include "parts/navbar.ftlh">
    </br>
    </br>
    <div class="text-center">
        <h3>Регистрация:</h3>
        <br/>
        ${message?ifExists}
        <@l.login "/reg" true/>
    </div>
</@p.page>