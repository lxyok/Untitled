// ==UserScript==
// @icon         https://cloud.tencent.com/favicon.ico?t=201902181234
// @icon         https://img.alicdn.com/tfs/TB1_ZXuNcfpK1RjSZFOXXa6nFXa-32-32.ico
// @name         腾讯云阿里云自动点击登陆
// @namespace    https://github.com/lxyok
// @version      0.1
// @description  腾讯云阿里云自动点击登录
// @author       lxyok
// @match        *://cloud.tencent.com/*
// @match        *://*.aliyun.com/*
// @grant        none
// ==/UserScript==

(function () {
    'use strict';
    //腾讯云点击登陆
    setInterval(function () { document.querySelector("#loginBox > div > div > div.clg-other-mod.J-otherMod > div.clg-other-con.J-switchLoginTypeArea > div:nth-child(1) > a").click() }, 1000);

    setInterval(function(){document.querySelector("#loginBox > div > div > div.clg-mod-tab.J-loginContentBox.J-qcloginBox > div.clg-form.J-loginForm > div.clg-form-btn > a.clg-btn.J-loginBtn").click()},1000);

    // setInterval(function () {
    //     document.getElementsByClassName("clg-btn J-loginBtn md-opjjpmhoiojifppkkcdabiobhakljdgm_doc")[0].click()
    // }, 1000);

    //阿里云点击登陆
    setInterval(function(){document.querySelector("#login-form > div.fm-btn > button").click()},1000);
})();