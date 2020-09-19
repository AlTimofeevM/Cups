<#import "parts/page.ftlh" as p>

<@p.page>
    <#include "parts/navbar.ftlh">
    <div>Список турниров</div>
    <#list cups as cup>
        <b>${cup.id}</b>
        <span>${cup.title}</span>
        <i>${cup.description}</i>
        <strong>${cup.author.getUsername()}</strong>
        <div>
            <#list cup.filename as file>
                    <img src="/img/${file}">
            </#list>
        </div>
        </br>
    </#list>
</@p.page>