"use strict"; document.addEventListener("DOMContentLoaded", function (e) {
    var
    n; (n = document.querySelector(".phone-number-otp-mask")) && new
        Cleave(n, { phone: !0, phoneRegionCode: "US" }), FormValidation.formValidation(document.getElementById("enableOTPForm"), {
            fields: {
                modalEnableOTPPhone: {
                    validators: {
                        notEmpty: {
                            message: "Pleaseenter your mobile number"}}}},plugins:{trigger:new FormValidation.plugins.Trigger,bootstrap5:new
FormValidation.plugins.Bootstrap5({ eleValidClass: "", rowSelector: ".col-12" }), submitButton: new
                                FormValidation.plugins.SubmitButton, autoFocus: new
                                    FormValidation.plugins.AutoFocus
                        }, init: e => { e.on("plugins.message.placed", function (e) { e.element.parentElement.classList.contains("input-group") && e.element.parentElement.insertAdjacentElement("afterend", e.messageElement) }) }
                    })
});