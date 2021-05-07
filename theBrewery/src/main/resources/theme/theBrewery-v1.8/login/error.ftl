<#import "email-exist-error.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section = "header">
        <#if messageHeader??>
        ${messageHeader}
        <#else>
        ${message.summary}
        </#if>
    <#elseif section = "form">
    <div id="kc-error-message">
        <p class="instruction">This Email is already registered</p>
        <p><a class="ahac-href" href="${url.registrationUrl}">Back to Register</a></p>
    </div>
    </#if>
</@layout.registrationLayout>