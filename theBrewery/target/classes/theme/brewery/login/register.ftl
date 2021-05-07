<#import "register-template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        ${msg("registerTitle")}
    <#elseif section = "form">
        <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
            <div id="input-type-effect">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="firstName" class="${properties.kcLabelClass!}">${msg("firstName")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="firstName" class="register-input-type-format" name="firstName" value="${(register.formData.firstName!'')}" required />
                </div>
            </div>

            <div id="input-type-effect">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="lastName" class="${properties.kcLabelClass!}">${msg("lastName")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="lastName" class="register-input-type-format" name="lastName" value="${(register.formData.lastName!'')}" required />
                </div>
            </div>

            <div id="input-type-effect">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="email" class="${properties.kcLabelClass!}">${msg("email")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="email" class="register-input-type-format" name="email" value="${(register.formData.email!'')}" autocomplete="email" required />
                </div>
            </div>

          <#if !realm.registrationEmailAsUsername>
            <div id="input-type-effect">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="username" class="${properties.kcLabelClass!}">${msg("username")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="username" class="register-input-type-format" name="username" value="${(register.formData.username!'')}" autocomplete="username" required />
                </div>
            </div>
          </#if>

            <#if passwordRequired??>
            <div id="input-type-effect">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="password" class="${properties.kcLabelClass!}">${msg("password")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password" class="register-input-type-format" name="password" autocomplete="new-password" required />
                </div>
            </div>

            <div id="input-type-effect">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="password-confirm" class="${properties.kcLabelClass!}">${msg("passwordConfirm")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password-confirm" class="register-input-type-format" name="password-confirm" required />
                </div>
            </div>
            </#if>

            <#if recaptchaRequired??>
            <div class="form-group">
                <div class="${properties.kcInputWrapperClass!}">
                    <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                </div>
            </div>
            </#if>

            <div class="${properties.kcFormGroupClass!}">


                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input class="kc-login" type="submit" value="${msg("doRegister")}"/>
                </div>

                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="kc-form-options">
                        <span><a href="${url.loginUrl}" class="ahac-href">Already have an account?</a></span>
                    </div>
                </div>
            </div>
        </form>
    </#if>
</@layout.registrationLayout>
