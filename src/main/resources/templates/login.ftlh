<#import "parts/page.ftlh" as p>
<#import "parts/login.ftlh" as l>

<@p.page>
    <#include "parts/navbar.ftlh">
    </br>
    </br>
    <div class="text-center">
        <h3>Войдите:</h3>
        <br/>
        <@l.login "/login" false/>
    </div>
</@p.page>