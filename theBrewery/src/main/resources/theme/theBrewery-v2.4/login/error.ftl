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
        <#if "${message.summary}"=="Unexpected error when handling authentication request to identity provider.">
            <p class="instruction">This Email is already registered</p>
            <p><a class="ahac-href" href="${url.registrationUrl}">Back to Register</a></p>
        <#else>
            <p class="instruction">Action expired. Please start again</p>
            <span><a href="${url.loginUrl}" class="ahac-href">${kcSanitize(msg("backToLogin"))?no_esc}</a></span>
        </#if>
    </div>
    </#if>
</@layout.registrationLayout>