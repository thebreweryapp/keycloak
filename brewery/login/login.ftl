<#import "brewery-template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo displayWide=(realm.password && social.providers??); section>
    <#if section = "header">
        ${msg("doLogIn")}
    <#elseif section = "form">
    <div id="kc-form" <#if realm.password && social.providers??>class="${properties.kcContentWrapperClass!}"</#if>>
      <div id="kc-form-wrapper" <#if realm.password && social.providers??>class="${properties.kcFormSocialAccountContentClass!} ${properties.kcFormSocialAccountClass!}"</#if>>
        <#if realm.password>
            <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                <div class="row-format">
                    <div id="item-label">
                    <label for="username" id="label-format"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
                    </div>
                    <div>
                    <#if usernameEditDisabled??>
                        <input tabindex="1" placeholder="Your email" id="username" class="input-type-format" name="username" value="${(login.username!'')}" type="text" disabled />
                    <#else>
                        <input tabindex="1" placeholder="Your email" id="username" class="input-type-format" name="username" value="${(login.username!'')}"  type="text" autofocus autocomplete="off" />
                    </#if>
                    </div>
                </div>

                <div class="row-format">
                    <div id="item-label">
                    <label for="password" id="label-format">${msg("password")}</label>
                    </div>
                    <div>
                    <input tabindex="2" placeholder="Your password" id="password" class="input-type-format" name="password" type="password" autocomplete="off" />
                    </div>


                    <div class="kc-form-buttons">
                      <input type="hidden" id="id-hidden-input" name="credentialId" <#if auth.selectedCredential?has_content>value="${auth.selectedCredential}"</#if>/>
                      <input tabindex="4" class="button-format ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
                  
                        <#if realm.password && social.providers??>
                            <div id="kc-social-providers" class=google-login ${properties.kcFormSocialAccountClass!}">
                                <ul class="google-ul-class <#if social.providers?size gt 4>${properties.kcFormSocialAccountDoubleListClass!}</#if>">
                                    <#list social.providers as p>
                                        <li class="google-li-class"><a href="${p.loginUrl}" id="zocial-${p.alias}" class="google-href"> <span>Sign in with Google</span></a></li>
                                    </#list>
                                </ul>
                            </div>
                        </#if>
                  
                  </div>
                </div>

                

                <div class="${properties.kcFormGroupClass!} ${properties.kcFormSettingClass!}">
                    <div id="kc-form-options">
                        <#if realm.rememberMe && !usernameEditDisabled??>
                            <div class="checkbox">
                                <label>
                                    <#if login.rememberMe??>
                                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox" checked> ${msg("rememberMe")}
                                    <#else>
                                        <input tabindex="3" id="rememberMe" name="rememberMe" type="checkbox"> ${msg("rememberMe")}
                                    </#if>
                                </label>
                            </div>
                        </#if>
                        </div>
                        <div class="${properties.kcFormOptionsWrapperClass!}">
                            <#if realm.resetPasswordAllowed>
                                <span><a tabindex="5" href="${url.loginResetCredentialsUrl}">${msg("doForgotPassword")}</a></span>
                            </#if>
                        </div>

                  </div>


            </form>
        </#if>
        </div>

      </div>
    <#elseif section = "info" >
        <#if realm.password && realm.registrationAllowed && !registrationDisabled??>
            <div id="kc-registration">
                <span>${msg("noAccount")} <a tabindex="6" href="${url.registrationUrl}">${msg("doRegister")}</a></span>
            </div>
        </#if>
    </#if>

</@layout.registrationLayout>
