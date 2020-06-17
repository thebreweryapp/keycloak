<#import "login-verify-email-template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        ${msg("emailVerifyTitle")}
    <#elseif section = "form">
        <p class="instruction">
            ${msg("emailVerifyInstruction1")}
        </p>
        <p class="instruction">
            ${msg("emailVerifyInstruction2")} <a class="ahac-href" href="${url.loginAction}">${msg("doClickHere")}</a> ${msg("emailVerifyInstruction3")}
        </p>
        <p>
            <a href="${client.baseUrl}" class="ahac-href">Back To Login</a>
        </p>

    </#if>
</@layout.registrationLayout>