<#include "security.ftlh">
<#import "login.ftlh" as l>

<nav class="navbar navbar-expand-lg  navbar-dark bg-dark">
    <a class="navbar-brand" href="/">Костро</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Турниры</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/cup">Создать турнир</a>
            </li>
            <#if isAuthorized>
                <li class="nav-item">
                    <@l.logout />
                </li>
            <#else>
                <li class="nav-item">
                    <a class="nav-link" href="/login">Войти</a>
                </li>

            </#if>
        </ul>

    </div>
</nav>