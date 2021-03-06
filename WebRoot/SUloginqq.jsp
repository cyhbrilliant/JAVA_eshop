<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <style type="text/css">
    
    	.barddzc{
    		float: left;
            width: 96px;
            height: 0;
            overflow: hidden;
            padding: 39px 0 0 0;
            margin: 18px 0 0 0;
            background: transparent url(./images/icons5.png) no-repeat 0 -244px;
            text-align: center;
            line-height: 39px;
            color: #fff;
    	
    	}
        html, body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td {
            margin: 0;
            padding: 0;
            font-family: Helvetica, Tahoma, Arial, "Hiragino Sans GB", "Hiragino Sans GB W3", "Microsoft YaHei", STXihei, STHeiti, Heiti, SimSun, sans-serif;
            font-size: 100%;
        }

        html, body {
            color: #333
        }

        body {
            background: #fff;
        }

        ul, ol, li {
            list-style: none;
        }

        a:link, a:visited {
            color: #333;
            text-decoration: none;
        }

        a:hover {
            color: #12b7f5;
        }

        img {
            border: none;
        }

        em {
            font-style: normal;
        }

        h1, h2, h3, h4, h5 {
            font-weight: normal;
        }

        .clearfloat:after {
            content: '.';
            display: block;
            overflow: hidden;
            visibility: hidden;
            font-size: 0;
            line-height: 0;
            width: 0;
            height: 0;
        }

        .clearfloat {
            zoom: 1;
        }

        /* top */
        .max1600 {
            max-width: 1600px;
            min-width: 1007px;
            margin: 0 auto;
        }

        .topbar {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 150px; 
            z-index: 900;
        }

        .toppic {
            max-width: 1170px;
            min-width: 980px;
            width: 80%;
            height: 75px;
            margin: 0 auto;
        }

        .toppic a:link, .toppic a:visited {
            color: #fff;
        }

        .topicfixed {
            position: fixed;
            left: 0;
            top: 0;
            background: #fff;
            border-bottom: 1px solid #f1f1f1;
        }

        .topicfixed a:link, .topicfixed a:visited {
            color: #333;
        }

        .topside {
            float: left;
            width: 59%;
        }

        .logoLink {
            float: left;
            display: block;
            width: 200px;
            height: 76px;
            overflow: hidden;
            padding-top: 0px;
            font-size: 0;
            background: url(./images/logo7.png)  no-repeat left 15px;
        }

        .topNav {
            float: left;
            width: 450px;
            padding-left: 18px;
        }

        .topNav li {
            float: left;
            margin-left: 20px;
        }

        .topNav li a {
            float: left;
            padding: 0 20px;
            line-height: 75px;
            font-size: 1.125em;
        }

        .topNav li a:hover {
            background: #12b7f5;
        }

        .topNav li.current a {
            background: #12b7f5;
        }

        .topicfixed {
            height: 75px;
        }

        .topicfixed .logoLink {
            background-image: url(./images/logo7.png);
        }

        .topicfixed li.current a {
            background: none;
            color: #12b7f5;
        }

        .topicfixed .topNav li a:hover {
            background: none;
            color: #12b7f5;
        }

        .topTool {
            float: right;
            width: 320px;
            height: 76px;
            font-size: 0.875em;
            background: transparent url(./images/ulogin.png) no-repeat 0 -244px;
        }

        .topTool a.barzc {
            float: left;
            width: 96px;
            height: 0;
            overflow: hidden;
            padding: 39px 0 0 0;
            margin: 18px 0 0 0;
            background: transparent url(./images/icons.png) no-repeat 0 -244px;
            text-align: center;
            line-height: 39px;
            color: #fff;
        }
        
        .topTool a.barzcdl {
            float: left;
            width: 96px;
            height: 0;
            overflow: hidden;
            padding: 39px 0 0 0;
            margin: 18px 0 0 0;
            background: transparent url(./images/icons3.png) no-repeat 0 -244px;
            text-align: center;
            line-height: 39px;
            color: #ffffff;
        }

        .topTool a.barzc:hover, .topicfixed a.barzc:hover {
            background: transparent url(./images/icons.png) no-repeat 0 -284px;
            color: #ffffff;
        }
        
		.topTool a.barzcdl:hover, .topicfixed a.barzcdl:hover {
            background: transparent url(./images/icons3.png) no-repeat 0 -284px;
            color: #ffffff;
        }
        .topTool ul {
            float: right;
            height: 40px;
            padding-top: 6px;
        }

        .topTool li {
            float: right;
            margin-left: 30px;
            position: relative;
            line-height: 40px;
        }

        .topTool .login {
            height: 43px;
            line-height: 43px;
        }

        .topTool .login span {
            padding: 0 18px;
            color: #cecece;
        }

        .topTool a:hover {
            color: #f21717;
        }

        .flashData {
            float: right;
            line-height: 17px;
            text-align: right;
            letter-spacing: 0.04em;
        }

        .flashData a:hover {
            text-decoration: underline;
        }

        .topicfixed a.barzc {
            display: inline;
        }

        #loginInfo img {
            float: left;
            width: 25px;
            height: 25px;
            margin-top: 5px;
            vertical-align: middle;
            border-radius: 12px;
            cursor: pointer;
        }

        .loginPenel {
            display: none;
            position: absolute;
            right: 0;
            top: 30px;
            width: 120px;
            height: 85px;
            z-index: 100;
        }

        .loginPenel .trg {
            position: absolute;
            right: 8px;
            top: 4px;
            width: 10px;
            height: 7px;
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/trg.png) no-repeat 0 0;
            font-size: 0;
        }

        .logindrop {
            width: 120px;
            height: 75px;
            margin-top: 10px;
            background: #fff;
        }

        .nick {
            width: 100px;
            height: 39px;
            overflow: hidden;
            margin: 0 auto;
            white-space: nowrap;
            line-height: 39px;
            text-align: center;
            text-overflow: ellipsis;
        }

        .lgout {
            width: 100%;
            border-top: 1px solid #d7d7d7;
            line-height: 35px;
            text-align: center;
        }

        .lgout a:link, .lgout a:visited {
            color: #333;
        }

        /* banner */
        .crossbanenr {
            width: 100%;
            height: 778px;
        }

        .crossbanenr ul {
            position: relative;
            width: 100%;
            height: 100%;
            overflow: hidden; /*max-width: 1920px; */
            min-width: 1007px;
            margin: 0 auto;
        }

        .crossbanenr li {
            position: absolute;
            left: 50%;
            top: 0;
            width: 1920px;
            height: 100%;
            margin: 0 0 0 -960px;
            display: none;
            z-index: 1;
        }

        .crossbanenr li:first-child {
            display: block;
        }

        .crossbanenr li.current {
            z-index: 2;
        }

        .crossbanenr li.pcqqbg {
            background: transparent url(./images/topback1.jpg) no-repeat center center;
        }

        .crossbanenr li.mbqqbg {
            background: transparent url(./images/topback5.jpg) no-repeat center center;
        }

        .crossbanenr li.padqqbg {
            background: transparent url(./images/topback1.jpg) no-repeat center top;
        }

        .crossbanenr li.watchbg {
            background: transparent url(./images/topback5.jpg) no-repeat center top;
        }

        .bncont {
            position: relative;
            width: 1050px;
            height: 100%;
            margin: 0 auto;
        }
        .mbqqbg>.bncont{
            width: 1173px;
        }

        .bntxt {
            position: absolute;
            top: 50%;
            width: 473px;
            height: 390px;
            margin-top: -195px;
            z-index: 10;
        }

        .bntxt h2 {
            width: 100%;
            height: 0;
            overflow: hidden;
            padding-top: 329px;
            text-indent: -9999px;
        }

        .bntxt a {
            display: block;
            width: 386px;
            height: 0;
            overflow: hidden;
            padding-top: 76px;
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/btn541b.png) no-repeat 0 0;
            text-align: center;
            line-height: 76;
            font-size: 30px;
            letter-spacing: 15px;
        }
        .bntxt a.mbxz{
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2016/pc/ay/655_btn.png) no-repeat 0 0;
            padding-top: 95px;
        }
        .bntxt a:link, .bntxt a:visited {
            color: #fff;
        }

        .bntxt a.bnzc {
            background-position: 0 0;
        }

        .bntxt a.bnzc:hover {
            background-position: 0 -77px;
        }

        .bntxt a.bnxz {
            background-position: 0 0;
        }

        .bntxt a.bnxz:hover {
            background-position: 0 -77px;
        }
        /*.pcqqbg .bntxt h2{ background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2016/pc/pcver83.png) no-repeat 15px top;}*/
        /*.mbqqbg .bntxt h2{ background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2016/pc/mbver637.png) no-repeat 35px 20px; }*/

        .padqqbg .bntxt h2 {
            background: transparent url() no-repeat 35px top;
        }

        .watchbg .bntxt h2 {
            background: transparent url() no-repeat center 40px;
        }

        .pcqqbg .bnimg {
            position: absolute;
            right: -200px;
            top: 150px;
            width: 601px;
            height: 744px;
            background: url(./images/topback1.jpg) no-repeat 0 0;
            z-index: 1;
        }

        .mbqqbg .bnimg {
            position: absolute;
            right: -168px;
            top: 130px;
            width: 820px;
            height: 977px;
            background: url(./images/topback2.jpg) no-repeat 0 0;
            z-index: 1;
        }

        .circle {
            position: relative;
            width: 100%;
            height: 52px;
            margin-top: -52px;
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/linearbot.png) repeat-x left top;
            text-align: center;
            z-index: 5;
        }

        .circle span {
            margin: 0 5px;
            padding: 2px 5px;
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/nav.png) no-repeat center center;
            cursor: pointer;
        }

        .circle span.on {
            background-image: url(https://sqimg.qq.com/qq_product_operations/im/2015/navcur.png);
        }

        .content {
            width: 100%;
        }

        .content h1 {
            width: 100%;
            height: 0;
            overflow: hidden;
            padding-top: 280px;
            background: #fff url(./images/content2.png) no-repeat center top;
        }

        .activebg {
            position: relative;
            width: 100%;
            height: 600px;
            background: #fff;
            background-attachment: fixed;
            background-position: center 0;
            background-repeat: no-repeat;
        }

        .fisrtbg {
            background-image: url(./images/para1_2.jpg);
        }

        .secondbg {
            background-image: url(./images/para2_2.jpg);
        }

        .thirdbg {
            background-image: url(./images/para3_1.jpg);
        }

        .txtwrap p {
            font-size: 18px;
            letter-spacing: 0.12em;
        }

        .qfigure {
            width: 100%;
            height: 584px;
            background: #fff;
        }

        .qw960 {
            position: relative;
            width: 960px;
            height: 584px;
            margin: 0 auto;
        }

        .qcallAnimate {
            position: absolute;
            left: -200px;
            bottom: 0;
            width: 664px;
            height: 763px;
            background: transparent url(./images/photo1_1.png) no-repeat 0 0;
        }

        .qcall .txtwrap {
            position: absolute;
            right: 7px;
            top: 115px;
            width: 487px;
        }

        .qcall h2 {
            width: 100%;
            height: 0;
            overflow: hidden;
            padding-top: 135px;
            background: transparent url(./images/qcall_txt.png) no-repeat 0 0;
        }

        .qcall p {
            width: 100%;
            margin-bottom: 12px;
            line-height: 25px;
            text-align: right;
            opacity: 0.6;
        }

        .figs {
            width: 100%;
            padding-top: 44px;
            min-height: 77px;
        }

        .figs li {
            padding: 58px 0 0;
            color: #a0a0a0;
            font-size: 14px;
            text-align: center;
        }

        .qcall .figs {
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/qcall_figs.png) no-repeat 190px 41px;
        }

        .qcall .figs li {
            float: right;
            border-left: 1px solid #e9e9e9;
        }

        .qcall .figs li.f01 {
            width: 80px;
            text-align: right;
        }

        .qcall .figs li.f02 {
            width: 109px;
        }

        .qcall .figs li.f03 {
            width: 156px;
            border: none;
        }

        .qcallWrap {
            position: relative;
            width: 251px;
            height: 446px;
            overflow: hidden;
            left: 57px;
            top: 72px;
        }

        .qcallWrap .pic1 {
            position: absolute;
            left: 0;
            top: 0;
            width: 255px;
            height: 450px;
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/qcall_fig1.png) no-repeat 0 0;
            z-index: 2;
            opacity: 0;
            filter: Alpha(opacity=0);
        }

        .qcallbtn {
            position: absolute;
            left: 200px;
            top: 295px;
            width: 30px;
            height: 30px;
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/point.png) no-repeat 0 0;
            z-index: 1;
            opacity: 0;
            filter: Alpha(opacity=0);
        }

        /*qfile*/
        .qfileAnimate {
            position: absolute;
            right: -100px;
            bottom: 104px;
            width: 597px;
            height: 330px;
            background: transparent url(./images/pic2.png) no-repeat 0 0;
        }

        .qfile .txtwrap {
            position: absolute;
            left: 7px;
            top: 115px;
            width: 450px;
        }

        .qfile h2 {
            width: 100%;
            height: 0;
            overflow: hidden;
            padding-top: 140px;
            background: transparent url(./images/qcall_txt2.png) no-repeat 0 0;
        }

        .qfile p {
            width: 90%;
            margin-bottom: 12px;
            padding-left: 5px;
            line-height: 25px;
            opacity: 0.6;
        }

        .qfile .figs {
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/qfile_figs.png) no-repeat 7px 41px;
        }

        .qfile .figs li {
            float: left;
            border-right: 1px solid #e9e9e9;
        }

        .qfile .figs li.f01 {
            width: 94px;
            text-align: left;
            text-indent: 12px;
        }

        .qfile .figs li.f02 {
            width: 112px;
        }

        .qfile .figs li.f03 {
            width: 108px;
            border: none;
        }

        .qfileWrap {
            position: relative;
            left: 27px;
            top: 259px;
            width: 328px;
            height: 280px;
        }

        .qfileWrap .pic1 {
            position: absolute;
            left: 10px;
            top: 0;
            width: 275px;
            height: 83px;
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/qfile_fig1.png) no-repeat 0 0;
            opacity: 0;
        }

        .qfileWrap .pic2 {
            position: absolute;
            right: 12px;
            top: 114px;
            width: 140px;
            height: 118px;
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/qfile_fig2.png) no-repeat 0 0;
            opacity: 0;
        }

        .qfbar {
            position: absolute;
            left: 78px;
            top: 71px;
            width: 194px;
            height: 3px;
            overflow: hidden;
            background: #e6e6e6;
            opacity: 0;
        }

        .qfbar .bar {
            width: 30%;
            height: 3px;
            background: #5be10b;
        }

        /*qblog*/
        .qblogAnimate {
            position: absolute;
            left: 20px;
            bottom: 0;
            width: 400px;
            height: 506px;
            background: transparent url(./images/pic3.png) no-repeat -30px 0;
        }

        .qblog .txtwrap {
            position: absolute;
            right: 7px;
            top: 120px;
            width: 495px;
        }

        .qblog h2 {
            width: 100%;
            height: 0;
            overflow: hidden;
            padding-top: 135px;
            background: transparent url(./images/qcall_txt3.png) no-repeat 0 0;
        }

        .qblog p {
            width: 100%;
            margin-bottom: 12px;
            line-height: 25px;
            text-align: right;
            opacity: 0.6;
        }

        .qblog .figs {
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/qblog_figs.png) no-repeat 228px 41px;
        }

        .qblog .figs li {
            float: right;
            border-left: 1px solid #e9e9e9;
        }

        .qblog .figs li.f01 {
            width: 80px;
            text-align: right;
        }

        .qblog .figs li.f02 {
            width: 105px;
        }

        .qblog .figs li.f03 {
            width: 106px;
            border: none;
        }

        .qblogWrap {
            position: relative;
            left: 0;
            top: 217px;
            width: 291px;
            height: 150px;
        }

        .qblogWrap div {
            position: absolute;
            top: 0;
            width: 150px;
            height: 150px;
        }

        .qblogWrap .pic1 {
            left: -122px;
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/qblog_fig1.png) no-repeat 0 0;
            opacity: 0;
        }

        .qblogWrap .pic2 {
            left: 70px;
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/qblog_fig2.png) no-repeat 0 0;
            opacity: 0;
        }

        .qblogWrap .pic3 {
            right: -119px;
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/qblog_fig3.png) no-repeat 0 0;
            opacity: 0;
        }

        .morefigs {
            width: 100%;
            height: 87px;
            padding-top: 43px;
            border-top: 1px solid #e5e5e5
        }

        .morefigs a {
            display: block;
            width: 332px;
            height: 0;
            overflow: hidden;
            padding-top: 45px;
            margin: 0 auto;
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/morefigs.png) no-repeat 0 0;
        }

        a.knmore:link, a.knmore:visited {
            color: #12b7f5;
        }

        /* flash */
        .flashBar {
            float: right;
            width: 67px;
        }

        .flashBar a {
            display: block;
            width: 67px;
            height: 0;
            overflow: hidden;
            padding-top: 67px;
            background: #000 url(https://sqimg.qq.com/qq_product_operations/im/mobileqq/flahicons.png) no-repeat 0 0;
            border-bottom: 1px solid #333;
        }

        .flashBar a.close {
            background-position: 14px 14px;
        }

        .flashBar a.sharetozone {
            background-position: 14px -52px;
        }

        .flashBar a.sharetoweibo {
            background-position: 14px -120px;
        }

        .flashBar a.close:hover {
            background-position: -52px 14px;
        }

        .flashBar a.sharetozone:hover {
            background-position: -52px -52px;
        }

        .flashBar a.sharetoweibo:hover {
            background-position: -52px -120px;
        }

        .flashBox {
            float: left;
            background: url(https://sqimg.qq.com/qq_product_operations/im/mobileqq/loading.gif) no-repeat 50% 40%;
            width: 910px;
            height: auto;
        }

        .overlay {
            display: none;
            position: absolute;
            left: 0;
            top: 0;
            z-index: 9999;
            width: 100%;
            height: 100%;
            background-color: #000;
            opacity: 0.6;
            filter: Alpha(opacity=60);
        }

        #flashDiv {
            position: absolute;
            left: 50%;
            top: 47px;
            width: 978px;
            height: 721px;
            margin: 0 0 0 -489px;
            display: none;
            z-index: 10000;
            position: fixed;
        }

        .togame {
            clear: both;
            padding-right: 80px;
            height: 31px;
            text-align: right;
        }

        /* footer */
        .newfoot {
            width: 100%;
            height: 348px;
            padding-top: 30px;
            background: #2a2445;
            font-size: 1.5em;
        }

        .newfoot a:link, .newfoot a:visited {
            color: #979797;
        }

        .newfoot a:hover {
            color: #cfcfcf;
        }

        .qmaps {
            width: 960px;
            height: 205px;
            margin: 0 auto;
        }

        .plats {
            float: left;
            width: 460px;
            padding-left: 8px;
        }

        .plats h3 {
            height: 50px;
            color: #666;
            font-size: 14px;
        }

        .plats a {
            float: left;
            padding-top: 65px;
            background: transparent url(https://sqimg.qq.com/qq_product_operations/im/2015/plats1.png) no-repeat 0 0;
            text-align: center;
            font-size: 14px;
        }

        .plats a:hover {
            color: #12b7f5;
        }

        .plats a.plmb {
            width: 68px;
            margin-right: 35px;
            background-position: 0px 0;
        }

        .plats a.plmb:hover {
            background-position: 0px -93px;
        }

        .plats a.plpc {
            width: 80px;
            margin-right: 30px;
            background-position: -105px 0;
        }

        .plats a.plpc:hover {
            background-position: -105px -93px;
        }

        .plats a.plmac {
            width: 84px;
            margin-right: 30px;
            background-position: -210px 0;
        }

        .plats a.plmac:hover {
            background-position: -210px -93px;
        }

        .plats a.plpad {
            width: 76px;
            background-position: -326px 0;
        }

        .plats a.plpad:hover {
            background-position: -326px -93px;
        }

        .map {
            float: left;
        }

        .map h3 {
            height: 25px;
            color: #666;
            font-size: 14px;
            margin-bottom: 4px;
        }

        .map li {
            line-height: 22px;
        }

        .qac {
            width: 120px;
        }

        .qfaq {
            width: 120px;
        }

        .qlink {
            width: 120px;
        }

        .copyright {
            clear: both;
            width: 960px;
            margin: 0 auto;
            padding-top: 16px;
            border-top: 1px solid #666;
            line-height: 17px;
            text-align: center;
            color: #666;
        }

        .login_div {
            display: none;
            position: fixed;
            left: 50%;
            top: 50%;
            width: 622px;
            height: 368px;
            margin: -184px 0 0 -311px;
            z-index: 99999;
        }

        #pg2 .qfileWrap .pic1 {
            opacity: 1;
            -webkit-transform-origin: left;
            -moz-transform-origin: left;
            -o-transform-origin: left;
            -ms-transform-origin: left;
            transform-origin: left;
            -webkit-animation: zoomIn 0.2s ease 0.1s;
            -moz-animation: zoomIn 0.2s ease 0.1s;
            -o-animation: zoomIn 0.2s ease 0.1s;
            animation: zoomIn 0.2s ease 0.1s;
            -webkit-animation-fill-mode: backwards;
            -moz-animation-fill-mode: backwards;
            -o-animation-fill-mode: backwards;
            animation-fill-mode: backwards;
        }

        #pg2 .qfileWrap .qfbar {
            -webkit-animation: fadeIn 0.4s ease 0.3s;
            -moz-animation: fadeIn 0.4s ease 0.3s;
            -o-animation: fadeIn 0.4s ease 0.3s;
            animation: fadeIn 0.4s ease 0.3s;
            -webkit-animation-fill-mode: forwards;
            -moz-animation-fill-mode: forwards;
            -o-animation-fill-mode: forwards;
            animation-fill-mode: forwards;
        }

        #pg2 .qfileWrap .bar {
            -webkit-animation: widthall 1s ease 0.4s;
            -moz-animation: widthall 1s ease 0.4s;
            -o-animation: widthall 1s ease 0.4s;
            animation: widthall 1s ease 0.4s;
            -webkit-animation-fill-mode: forwards;
            -moz-animation-fill-mode: forwards;
            -o-animation-fill-mode: forwards;
            animation-fill-mode: forwards;
        }

        #pg2 .qfileWrap .pic2 {
            opacity: 1;
            -webkit-transform-origin: right;
            -moz-transform-origin: right;
            -o-transform-origin: right;
            -ms-transform-origin: right;
            transform-origin: right;
            -webkit-animation: zoomIn 0.2s ease 1.5s;
            -moz-animation: zoomIn 0.2s ease 1.5s;
            -o-animation: zoomIn 0.2s ease 1.5s;
            animation: zoomIn 0.2s ease 1.5s;
            -webkit-animation-fill-mode: backwards;
            -moz-animation-fill-mode: backwards;
            -o-animation-fill-mode: backwards;
            animation-fill-mode: backwards;
        }

        #pg3 .qblogWrap .pic1 {
            opacity: 1;
            -webkit-animation: zoomIn 0.2s cubic-bezier(0, .25, .08, 1) 0.4s;
            -moz-animation: zoomIn 0.2s cubic-bezier(0, .25, .08, 1) 0.4s;
            -o-animation: zoomIn 0.2s cubic-bezier(0, .25, .08, 1) 0.4s;
            animation: zoomIn 0.2s cubic-bezier(0, .25, .08, 1) 0.4s;
            -webkit-animation-fill-mode: backwards;
            -moz-animation-fill-mode: backwards;
            -o-animation-fill-mode: backwards;
            animation-fill-mode: backwards;
        }

        #pg3 .qblogWrap .pic2 {
            opacity: 1;
            -webkit-animation: zoomIn 0.2s cubic-bezier(0, .25, .08, 1) 0.5s;
            -moz-animation: zoomIn 0.2s cubic-bezier(0, .25, .08, 1) 0.5s;
            -o-animation: zoomIn 0.2s cubic-bezier(0, .25, .08, 1) 0.5s;
            animation: zoomIn 0.2s cubic-bezier(0, .25, .08, 1) 0.5s;
            -webkit-animation-fill-mode: backwards;
            -moz-animation-fill-mode: backwards;
            -o-animation-fill-mode: backwards;
            animation-fill-mode: backwards;
        }

        #pg3 .qblogWrap .pic3 {
            opacity: 1;
            -webkit-animation: zoomIn 0.2s cubic-bezier(0, .25, .08, 1) 0.6s;
            -moz-animation: zoomIn 0.2s cubic-bezier(0, .25, .08, 1) 0.6s;
            -o-animation: zoomIn 0.2s cubic-bezier(0, .25, .08, 1) 0.6s;
            animation: zoomIn 0.2s cubic-bezier(0, .25, .08, 1) 0.6s;
            -webkit-animation-fill-mode: backwards;
            -moz-animation-fill-mode: backwards;
            -o-animation-fill-mode: backwards;
            animation-fill-mode: backwards;
        }

        @keyframes fadeUp {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0px);
            }
        }

        @-moz-keyframes fadeUp {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0px);
            }
        }

        @-webkit-keyframes fadeUp {
            0% {
                opacity: 0;
                -webkit-transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                -webkit-transform: translateY(0px);
            }
        }

        @-o-keyframes fadeUp {
            0% {
                opacity: 0;
                -o-transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                -o-transform: translateY(0px);
            }
        }

        @-ms-keyframes fadeUp {
            0% {
                opacity: 0;
                -ms-transform: translateY(-20px);
            }
            100% {
                opacity: 1;
                -ms-transform: translateY(0px);
            }
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        @-moz-keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        @-webkit-keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        @-o-keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        @-ms-keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        @keyframes widthall {
            0% {
                width: 30%;
            }
            100% {
                width: 100%;
            }
        }

        @-moz-keyframes widthall {
            0% {
                width: 30%;
            }
            100% {
                width: 100%;
            }
        }

        @-webkit-keyframes widthall {
            0% {
                width: 30%;
            }
            100% {
                width: 100%;
            }
        }

        @-o-keyframes widthall {
            0% {
                width: 30%;
            }
            100% {
                width: 100%;
            }
        }

        @-ms-keyframes widthall {
            0% {
                width: 30%;
            }
            100% {
                width: 100%;
            }
        }

        @keyframes zoomIn {
            0% {
                transform: scale(0);
            }
            60% {
                transform: scale(1.1);
            }
            100% {
                transform: scale(1);
            }
        }

        @-moz-keyframes zoomIn {
            0% {
                transform: scale(0);
            }
            60% {
                transform: scale(1.1);
            }
            100% {
                transform: scale(1);
            }
        }

        @-webkit-keyframes zoomIn {
            0% {
                -webkit-transform: scale(0);
            }
            60% {
                -webkit-transform: scale(1.1);
            }
            100% {
                -webkit-transform: scale(1);
            }
        }

        @-o-keyframes zoomIn {
            0% {
                -o-transform: scale(0);
            }
            90% {
                -o-transform: scale(1.1);
            }
            100% {
                -o-transform: scale(1);
            }
        }

        @-ms-keyframes zoomIn {
            0% {
                -ms-transform: scale(0);
            }
            60% {
                -ms-transform: scale(1.1);
            }
            100% {
                -ms-transform: scale(1);
            }
        }

        @keyframes moveleft {
            0% {
                transform: translateX(100%);
                opacity: 1;
            }
            100% {
                transform: translateX(0);
                opacity: 1;
            }
        }

        @-moz-keyframes moveleft {
            0% {
                transform: translateX(100%);
                opacity: 1;
            }
            100% {
                transform: translateX(0);
                opacity: 1;
            }
        }

        @-webkit-keyframes moveleft {
            0% {
                -webkit-transform: translateX(100%);
                opacity: 1;
            }
            100% {
                -webkit-transform: translateX(0);
                opacity: 1;
            }
        }

        @-o-keyframes moveleft {
            0% {
                -o-transform: translateX(100%);
                opacity: 1;
            }
            100% {
                -o-transform: translateX(0);
                opacity: 1;
            }
        }

        @-ms-keyframes moveleft {
            0% {
                -ms-transform: translateX(100%);
                opacity: 1;
            }
            100% {
                -ms-transform: translateX(0);
                opacity: 1;
            }
        }

        @keyframes click {
            0% {
                transform: translateY(0px) translateX(0px);
            }
            80% {
                transform: translateY(80px) translateX(-10px) scale(1);
                opacity: 1;
            }
            90% {
                transform: translateY(80px) translateX(-10px) scale(1);
                opacity: 1;
            }
            100% {
                transform: translateY(80px) translateX(-10px) scale(1.5);
                opacity: 0;
            }
        }

        @-moz-keyframes click {
            0% {
                transform: translateY(0px) translateX(0px);
            }
            80% {
                transform: translateY(80px) translateX(-10px) scale(1);
                opacity: 1;
            }
            90% {
                transform: translateY(80px) translateX(-10px) scale(1);
                opacity: 1;
            }
            100% {
                transform: translateY(80px) translateX(-10px) scale(1.5);
                opacity: 0;
            }
        }

        @-webkit-keyframes click {
            0% {
                -webkit-transform: translateY(0px) translateX(0px);
            }
            80% {
                -webkit-transform: translateY(80px) translateX(-10px) scale(1);
                opacity: 1;
            }
            90% {
                -webkit-transform: translateY(80px) translateX(-10px) scale(1);
                opacity: 1;
            }
            100% {
                -webkit-transform: translateY(80px) translateX(-10px) scale(1.5);
                opacity: 0;
            }
        }

        @-o-keyframes click {
            0% {
                -o-transform: translateY(0px) translateX(0px);
            }
            80% {
                -o-transform: translateY(-240px) translateX(-107px) scale(1);
                opacity: 1;
            }
            90% {
                -o-transform: translateY(-240px) translateX(-107px) scale(1);
                opacity: 1;
            }
            100% {
                -o-transform: translateY(-240px) translateX(-107px) scale(1.5);
                opacity: 0;
            }
        }

        @-ms-keyframes click {
            0% {
                -ms-transform: translateY(0px) translateX(0px);
            }
            80% {
                -ms-transform: translateY(-240px) translateX(-107px) scale(1);
                opacity: 1;
            }
            90% {
                -ms-transform: translateY(-240px) translateX(-107px) scale(1);
                opacity: 1;
            }
            100% {
                -ms-transform: translateY(-240px) translateX(-107px) scale(1.5);
                opacity: 0;
            }
        }

        @media screen and (min-width: 1921px) {
            .crossbanenr li {
                width: 100%;
                left: 50%;
                margin-left: -50%;
            }

            .crossbanenr li.pcqqbg, .crossbanenr li.mbqqbg, .crossbanenr li.padqqbg, .fisrtbg, .secondbg, .thirdbg {
                background-size: 100%;
            }
        }

        @media screen and (max-width: 1440px) {
            .crossbanenr li.pcqqbg {
                background: transparent url(./images/topback1.jpg) no-repeat center top;
            }

            .crossbanenr li.mbqqbg {
                background: transparent url(./images/topback5.jpg) no-repeat center top;
            }

            .crossbanenr li.pcqqbg a {
                margin: 40px 16px;
            }

            .crossbanenr li.padqqbg {
                background: transparent url(./images/topback1.jpg) no-repeat center top;
            }

            .crossbanenr li.watchbg {
                background: transparent url(./images/topback5.jpg) no-repeat center top;
            }

            .fisrtbg {
                background-image: url(./images/para1_2.jpg);
            }

            .secondbg {
                background-image: url(./images/para2_2.jpg);
            }

            .thirdbg {
                background-image: url(./images/para3_1.jpg);
            }

            .crossbanenr li.pcqqbg, .crossbanenr li.mbqqbg, .crossbanenr li.padqqbg, .crossbanenr li.watchbg, .fisrtbg, .secondbg, .thirdbg {
                background-size: cover;
            }

            .bncont {
                width: 950px;
            }
            .mbqqbg>.bncont{
                width: 888px;
            }
        }

        @media screen and (max-width: 1200px) and (min-height: 1400px) {
            .crossbanenr li.pcqqbg, .crossbanenr li.mbqqbg, .crossbanenr li.padqqbg, .crossbanenr li.watchbg, .fisrtbg, .secondbg, .thirdbg {
                background-size: cover;
            }
        }

        @media screen and (min-width: 1200px) and (min-height: 900px) {
            .crossbanenr li.pcqqbg, .crossbanenr li.mbqqbg, .crossbanenr li.padqqbg, .crossbanenr li.watchbg, .fisrtbg, .secondbg, .thirdbg {
                background-size: cover;
            }
        }
        
        .ttxt{
       		float:left;
       		margin:8px 0 0 70px;
        	width: 260px;
            height: 40px;
            font:  bold 14pt/16pt  Microsoft JhengHei;
            color:#FFFFFF;
        }

    </style>

</head>

<body>
<!--S header-->
<div id="topbar" class="topbar">
    <div class="toppic">
        <div class="topside">
            <a class="logoLink" ></a>
            <ul id="topNav" class="topNav">
                <li class="current"><a href="//localhost:8080/webtest/SUloginqq.jsp">首页</a></li>
                <li><a href="http://localhost:8080/webtest/like.jsp">猜你喜欢</a></li>
                <li><a href="http://localhost:8080/webtest/register_SfindById.action?id=${user.id}">个人信息</a></li>
            </ul>
        </div>
        <div class="topTool">
     		
			<div class="ttxt">您好，${sessionScope.user.getUsername()}</div>
			
              
        </div>
        
        
    </div>
</div>

<div class="crossbanenr wrap">
    <ul id="crossbanenr">
        <li class="mbqqbg" id="canvas_cd">
            <div class="bncont">

            </div>
        </li>
        <li class="pcqqbg">
            <div class="bncont">
            </div>
        </li>

        

    </ul>
</div>

<div class="content">
    <h1></h1>

    <div id="fisrtbg" class="activebg fisrtbg" data-stellar-background-ratio="0.03"></div>
    <div class="qfigure qcall">
        <div class="qw960">
            <div class="txtwrap">
                <h2></h2>

                <p>无论何时何地，你都能自由享受乐购物给您<br/>生活上带来的便利，shopping生活物品尽在乐购物</p>

                <p><a class="knmore" pgv="//localhost:8080/webtest/qq.jsp" href="//localhost:8080/webtest/clothes.jsp" target="_blank" >了解更多
                    &gt;</a></p>
                
            </div>
            <div class="qcallAnimate">
                <!--<div class="qcallWrap">-->
                <!--<div class="qcallbtn"></div>-->
                <!--<div class="pic1"></div>-->
            </div>
        </div>
    </div>
</div>
<div id="secondbg" class="activebg secondbg" data-stellar-background-ratio="0.05"></div>
<div class="qfigure qfile">
    <div class="qw960">
        <div class="txtwrap">
            <h2></h2>

            <p>梦幻般的世界，梦幻般的数码，各类电子产品<br/>乐购物让您拥有一个更智能的生活方式。</p>

            <p><a class="knmore" pgv="//localhost:8080/webtest/qq.jsp" href="//localhost:8080/webtest/digital.jsp" target="_blank" >了解更多 &gt;</a>
            </p>

        </div>
        <div class="qfileAnimate">
            <!--<div class="qfileWrap">-->
            <!--<div class="pic1"></div>-->
            <!--<div class="pic2"></div>-->
            <!--<div class="qfbar">-->
            <!--<div class="bar"></div>-->
            <!--</div>-->
            <!--</div>-->
        </div>
    </div>
</div>
<div id="thirdbg" class="activebg thirdbg" data-stellar-background-ratio="0.05"></div>
<div class="qfigure qblog">
    <div class="qw960">
        <div class="txtwrap">
            <h2></h2>

            <p>即使世界很大，你也不会孤单，在乐购物<br/>有和你一样的人，期待着和你一起发现精彩</p>
			<p><a class="knmore" pgv="//localhost:8080/webtest/qq.jsp" href="//localhost:8080/webtest/food.jsp" target="_blank" >了解更多 &gt;</a></p>
            
        </div>
        <div class="qblogAnimate">
            <div class="qblogWrap">
                <div class="pic1"></div>
                <div class="pic2"></div>
                <div class="pic3"></div>
            </div>
        </div>
    </div>
</div>
</div>
<!--E figure-->

<!--  div class="newfoot" style="height: 140px; "-->



<div style:"color=#2a4543"> 小组成员：崔雨豪	武恺莉		魏文选		姬姣姣    王志鹏		褚丹阳</div>

<!--  /div  -->

<!--E footer-->
<!--<div id="overlay" class="overlay"></div>-->
<!--&lt;!&ndash;S flash object&ndash;&gt;-->
<!--<div id="flashDiv">-->
    <!--<div class="flashBar"><a id="flashClose" href="#" class="close">关闭</a></div>-->
    <!--<div class="flashBox">-->
        <!--<div id="flashBox"><p><a href="http://www.adobe.com/go/getflashplayer"><img-->
                <!--src="https://sqimg.qq.com/qq_product_operations/im/mobileqq/get_flash_player.gif"-->
                <!--alt="Get Adobe Flash player"/></a></p></div>-->
    <!--</div>-->
    <!--&lt;!&ndash;<p class="togame"><a href="http://qqgame.qq.com/online.shtml" target="_blank">查看QQ游戏在线人数&gt;&gt;</a></p>&ndash;&gt;-->
<!--</div>-->

<!--E flash object-->
<script type="text/javascript" src="https://sqimg.qq.com/qq_product_operations/jslib/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="https://sqimg.qq.com/qq_product_operations/jslib/swfobject.js"></script>
<script type="text/javascript" src="https://sqimg.qq.com/qq_product_operations/jslib/stellar.js"></script>
<script type="text/javascript" src="https://pingjs.qq.com/tcss.ping.https.js"></script>
<script type="text/javascript" src="https://sqimg.qq.com/qq_product_operations/im/https_src/js/plus2015.js"></script>
<script type="text/javascript" src="https://tajs.qq.com/stats?sId=53297373" charset="UTF-8"></script>

<script type="text/javascript">$(function () {
    var ieAdjust = function () {
        var winWidth = $(window).width();
        if (parseInt(winWidth) <= 1440) {
            mbsrc = 'https://sqimg.qq.com/qq_product_operations/im/2016/pc/ay/mb655_s.jpg';
            pcsrc = 'https://sqimg.qq.com/qq_product_operations/im/2016/pc/pc_86_s.jpg';
            if(parseInt(winWidth)>1366){
                $('.mbqqbg>.bncont').css("width", "980px");
            }else{
                $('.mbqqbg>.bncont').css("width", "888px");
            }
        } else{
            mbsrc = 'https://sqimg.qq.com/qq_product_operations/im/2016/pc/ay/mb655_b.jpg';
            pcsrc = 'https://sqimg.qq.com/qq_product_operations/im/2016/pc/pc_86_b.jpg';
            $('.mbqqbg>.bncont').css("width", "1173px");
        }
        $('.pcqqbg').css({"filter": "progid:DXImageTransform.Microsoft.AlphaImageLoader(src=" + pcsrc + ",sizingMethod='scale')"});
        $('.mbqqbg').css({"filter": "progid:DXImageTransform.Microsoft.AlphaImageLoader(src=" + mbsrc + ",sizingMethod='scale')"});
    }
    ieAdjust();
    $.qReport(1);
    $.stellar({horizontalScrolling: false, verticalOffset: 40});
    $("#topNav").navtab();
    $("#crossbanenr").picfade({timerange: 3000});
    $("body").pgvClick();
    if (window.pgvMain) {
        window.pgvMain()
    }
    swfobject.embedSWF("http://im.qq.com/online/flash/flash20140304.swf", "flashBox", "910", "700", "9.0.0", "expressInstall.swf");
    $("#viewOnline").click(function (e) {
        e.preventDefault();
        $("#flashDiv").show();
        $("#overlay").css({opacity: "0.9"}).fadeIn();
        $("#overlay").css({height: $(document).height()})
    });
    $("#flashClose").click(function (e) {
        e.preventDefault();
        $("#flashDiv").hide();
        $("#overlay").fadeOut()
    });
    window.online_resp = function (data) {
        if (data && data.c) {
            $("#cur_online").text(data.c.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,"))
        }
    };
    $.getJSON("https://mma.qq.com/cgi-bin/im/online&callback=?", function (data) {
    });
    var cookie = {
        get: function (n) {
            var m = document.cookie.match(new RegExp("(^| )" + n + "=([^;]*)(;|$)"));
            return !m ? "" : decodeURIComponent(m[2])
        }, set: function (name, value, domain, path, hour) {
            var expire = new Date();
            expire.setTime(expire.getTime() + (hour ? 3600000 * hour : 30 * 24 * 60 * 60 * 1000));
            document.cookie = name + "=" + value + "; expires=" + expire.toGMTString() + "; path=" + (path ? path : "/") + "; " + (domain ? ("domain=" + domain + ";") : "")
        }, del: function (name, domain, path) {
            document.cookie = name + "=; expires=Mon, 26 Jul 1997 05:00:00 GMT; path=" + (path ? path : "/") + "; " + (domain ? ("domain=" + domain + ";") : "")
        }, uin: function () {
            var u = cookie.get("uin");
            return !u ? null : parseInt(u.substring(1, u.length), 10)
        }
    };
    var htmlEncodeDict = {'"': "#34", "<": "#60", ">": "#62", "&": "#38", " ": "#160"};
    var encodeHtml = function (s) {
        s += "";
        return s.replace(/["<>& ]/g, function (all) {
            return "&" + htmlEncodeDict[all] + ";"
        })
    };
    window.loginAll = function (json) {
        if (json && json.result == 0) {
            uin = cookie.uin();
            $("#login").hide();
            $("#nick").html("hi," + encodeHtml(json.nick));
            var imgurl="https://q1.qlogo.cn/g?b=qq&s=100&nk="+uin;  ///json.Face
            var $loginImg = $('<img id="loginImg" src="' + imgurl + '" alt="" />').insertAfter("#login");
            $("#loginInfo").addClass("logined");
            $("#loginInfo").hover(function () {
                if ($(this).hasClass("logined")) {
                    $("#loginPenel").slideDown(300)
                }
            }, function () {
                $("#loginPenel").hide()
            })
        }
    };
    try {
        var uin = cookie.uin();
        var skey = cookie.get("skey");
        if (!!uin) {
            $.getScript("https://proxy.now.qq.com/tx_tls_gate=qfwd.qq.com/?uin=" + uin + "&skey=" + skey + "&func=loginAll&refresh=0&ran=" + Math.random(), function () {
            })
        }
    } catch (e) {
    }
    window.ptlogin2_onClose = function () {
        $("#login_div").hide();
        $("#overlay").fadeOut()
    };
    window.ptlogin2_onResize = function (width, height) {
        $("#login_div").css({width: width, height: height, visibility: "hidden"}).css("visibility", "visible")
    };
    function str2JSON(str) {
        eval("var __pt_json=" + str);
        return __pt_json
    }

    if (typeof window.postMessage !== "undefined") {
        window.onmessage = function (event) {
            var msg = event || window.event;
            var data;
            if (typeof JSON !== "undefined") {
                data = JSON.parse(msg.data)
            } else {
                data = str2JSON(msg.data)
            }
            switch (data.action) {
                case"close":
                    ptlogin2_onClose();
                    break;
                case"resize":
                    ptlogin2_onResize(data.width, data.height);
                    break;
                default:
                    break
            }
        }
    }
    var showLogin = function () {
        var loginWin = $("#login_div");
        var _url = window.location.href;
        if (!loginWin.length) {
            loginWin = $('<div id="login_div" class="login_div"><iframe name="login_frame" frameborder="0" scrolling="auto" width="100%" height="100%" src="https://xui.ptlogin2.qq.com/cgi-bin/xlogin?appid=501038301&proxy_url=http%3A%2F%2Fid.qq.com%2Flogin%2Fproxy.html&s_url=' + encodeURIComponent(_url) + '"></iframe></div>');
            loginWin.appendTo($("body"))
        }
        $("#overlay").css({opacity: "0.5"}).fadeIn();
        $("#overlay").css({height: $(document).height()});
        loginWin.show()
    };
    $("#login").click(function (e) {
        e.preventDefault();
        showLogin()
    });
    $("#lgout").click(function (e) {
        e.preventDefault();
        cookie.del("uin", ".qq.com");
        cookie.del("skey", ".qq.com");
        cookie.del("uin", "im.qq.com");
        cookie.del("skey", "im.qq.com");
        $("#loginPenel").hide();
        $("#login").show();
        $("#loginImg").hide();
        $("#loginInfo").removeClass("logined")
    });
    var mod = $(".qfigure");
    var $body = $("body");
    var dataArr = [];
    $(mod).each(function (i, item) {
        if (i === 0) {
            dataArr[i] = $(item).offset().top - Math.floor($(item).height() / 2) - 500
        } else {
            dataArr[i] = $(item).offset().top - Math.floor($(item).height() / 2)
        }
    });
    var winHeight = $(window).height();
    var bodyheight = $body.height();
    $(".crossbanenr").animate({height: (winHeight - 130) > 560 ? (winHeight - 130) : 560}, 100, function () {
    });
    $(window).resize(function () {
        winHeight = $(window).height();
        bodyheight = $body.height();
        $(".crossbanenr").animate({height: (winHeight - 130) > 560 ? (winHeight - 130) : 560}, 100, function () {
        });
        ieAdjust();
    });
    var isIE = !!window.ActiveXObject;
    var scrollTop = $(window).scrollTop();
    var clientHeight = $(window).height();
    var contentHeight = 584;
    var barHeight = 600;
    var firstHeight = 778;
    var topHeight = 321;
    var thirdScroll = clientHeight < (topHeight + firstHeight) ? contentHeight : (contentHeight - clientHeight + topHeight + firstHeight);
    var fourthScroll = thirdScroll + contentHeight + barHeight;
    var fifthScroll = fourthScroll + contentHeight + barHeight;
    var sixthScroll = fifthScroll + contentHeight + barHeight;
    var changeH = (firstHeight + topHeight - clientHeight) / 2;
    var st = new Date().getTime();
    $(window).scroll(function (e) {
        scrollTop = $(window).scrollTop();
        if (scrollTop >= firstHeight) {
            $("#topbar").addClass("topicfixed")
        } else {
            if ($("#topbar").hasClass("topicfixed")) {
                $("#topbar").removeClass("topicfixed")
            }
        }
        if (scrollTop < 100) {
            $body.attr("id", "pg0")
        }
        $(dataArr).each(function (i, item) {
            if (Math.floor(winHeight / 2) + scrollTop >= item) {
                $body.attr("id", "pg" + (i + 1))
            }
        });
        if (scrollTop + winHeight >= bodyheight) {
            $body.attr("id", "pg3")
        }
    });

});

</script>

<!--S footer--></big></body>
</html>
