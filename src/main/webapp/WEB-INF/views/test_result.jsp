<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>위드컴퍼니</title>
<meta name="X-CSRF-TOKEN" content="9e1df29c77b7a592462f8a7808050758">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--css-->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css">
<link rel="stylesheet" href="resources/css/jquery.fullpage.css">
<link rel="stylesheet" href="resources/css/jquery.ui.min.css">
<link rel="stylesheet"
	href="//pro.fontawesome.com/releases/v5.10.0/css/all.css">
<link rel="stylesheet"
	href="resources/plugins/sweetalert2/sweetalert2.min.css"
	type="text/css">
<link rel="stylesheet"
	href="resources/plugins/ckeditor/plugins/codesnippet/lib/highlight/styles/monokai_sublime.css">
<link rel="stylesheet" href="resources/css/bootstrap-dialog.css"
	type="text/css">
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" href="resources/css/front.css">
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/default.css">
<link rel="stylesheet" href="resources/css/main.css">

<!--javascript-->
<script src="resources/plugins/jquery/jquery.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script src="resources/plugins/sweetalert2/sweetalert2.all.min.js"></script>
<style>
        .swal2-popup.swal2-toast {
            box-sizing: border-box;
            grid-column: 1/4 !important;
            grid-row: 1/4 !important;
            grid-template-columns: 1fr 99fr 1fr;
            padding: 1em;
            overflow-y: hidden;
            background: #fff;
            box-shadow: 0 0 .625em #d9d9d9;
            pointer-events: all
        }

        .swal2-popup.swal2-toast>* {
            grid-column: 2
        }

        .swal2-popup.swal2-toast .swal2-title {
            margin: 1em;
            padding: 0;
            font-size: 1em;
            text-align: initial
        }

        .swal2-popup.swal2-toast .swal2-loading {
            justify-content: center
        }

        .swal2-popup.swal2-toast .swal2-input {
            height: 2em;
            margin: .5em;
            font-size: 1em
        }

        .swal2-popup.swal2-toast .swal2-validation-message {
            font-size: 1em
        }

        .swal2-popup.swal2-toast .swal2-footer {
            margin: .5em 0 0;
            padding: .5em 0 0;
            font-size: .8em
        }

        .swal2-popup.swal2-toast .swal2-close {
            grid-column: 3/3;
            grid-row: 1/99;
            align-self: center;
            width: .8em;
            height: .8em;
            margin: 0;
            font-size: 2em
        }

        .swal2-popup.swal2-toast .swal2-html-container {
            margin: 1em;
            padding: 0;
            font-size: 1em;
            text-align: initial
        }

        .swal2-popup.swal2-toast .swal2-html-container:empty {
            padding: 0
        }

        .swal2-popup.swal2-toast .swal2-loader {
            grid-column: 1;
            grid-row: 1/99;
            align-self: center;
            width: 2em;
            height: 2em;
            margin: .25em
        }

        .swal2-popup.swal2-toast .swal2-icon {
            grid-column: 1;
            grid-row: 1/99;
            align-self: center;
            width: 2em;
            min-width: 2em;
            height: 2em;
            margin: 0 .5em 0 0
        }

        .swal2-popup.swal2-toast .swal2-icon .swal2-icon-content {
            display: flex;
            align-items: center;
            font-size: 1.8em;
            font-weight: 700
        }

        .swal2-popup.swal2-toast .swal2-icon.swal2-success .swal2-success-ring {
            width: 2em;
            height: 2em
        }

        .swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line] {
            top: .875em;
            width: 1.375em
        }

        .swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left] {
            left: .3125em
        }

        .swal2-popup.swal2-toast .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right] {
            right: .3125em
        }

        .swal2-popup.swal2-toast .swal2-actions {
            justify-content: flex-start;
            height: auto;
            margin: 0;
            margin-top: .3125em;
            padding: 0
        }

        .swal2-popup.swal2-toast .swal2-styled {
            margin: .25em .5em;
            padding: .4em .6em;
            font-size: 1em
        }

        .swal2-popup.swal2-toast .swal2-styled:focus {
            box-shadow: 0 0 0 1px #fff, 0 0 0 3px rgba(100, 150, 200, .5)
        }

        .swal2-popup.swal2-toast .swal2-success {
            border-color: #a5dc86
        }

        .swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line] {
            position: absolute;
            width: 1.6em;
            height: 3em;
            transform: rotate(45deg);
            border-radius: 50%
        }

        .swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=left] {
            top: -.8em;
            left: -.5em;
            transform: rotate(-45deg);
            transform-origin: 2em 2em;
            border-radius: 4em 0 0 4em
        }

        .swal2-popup.swal2-toast .swal2-success [class^=swal2-success-circular-line][class$=right] {
            top: -.25em;
            left: .9375em;
            transform-origin: 0 1.5em;
            border-radius: 0 4em 4em 0
        }

        .swal2-popup.swal2-toast .swal2-success .swal2-success-ring {
            width: 2em;
            height: 2em
        }

        .swal2-popup.swal2-toast .swal2-success .swal2-success-fix {
            top: 0;
            left: .4375em;
            width: .4375em;
            height: 2.6875em
        }

        .swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line] {
            height: .3125em
        }

        .swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=tip] {
            top: 1.125em;
            left: .1875em;
            width: .75em
        }

        .swal2-popup.swal2-toast .swal2-success [class^=swal2-success-line][class$=long] {
            top: .9375em;
            right: .1875em;
            width: 1.375em
        }

        .swal2-popup.swal2-toast .swal2-success.swal2-icon-show .swal2-success-line-tip {
            -webkit-animation: swal2-toast-animate-success-line-tip .75s;
            animation: swal2-toast-animate-success-line-tip .75s
        }

        .swal2-popup.swal2-toast .swal2-success.swal2-icon-show .swal2-success-line-long {
            -webkit-animation: swal2-toast-animate-success-line-long .75s;
            animation: swal2-toast-animate-success-line-long .75s
        }

        .swal2-popup.swal2-toast.swal2-show {
            -webkit-animation: swal2-toast-show .5s;
            animation: swal2-toast-show .5s
        }

        .swal2-popup.swal2-toast.swal2-hide {
            -webkit-animation: swal2-toast-hide .1s forwards;
            animation: swal2-toast-hide .1s forwards
        }

        .swal2-container {
            display: grid;
            position: fixed;
            z-index: 1060;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            box-sizing: border-box;
            grid-template-areas: "top-start     top            top-end" "center-start  center         center-end" "bottom-start  bottom-center  bottom-end";
            grid-template-rows: minmax(-webkit-min-content, auto) minmax(-webkit-min-content, auto) minmax(-webkit-min-content, auto);
            grid-template-rows: minmax(min-content, auto) minmax(min-content, auto) minmax(min-content, auto);
            height: 100%;
            padding: .625em;
            overflow-x: hidden;
            transition: background-color .1s;
            -webkit-overflow-scrolling: touch
        }

        .swal2-container.swal2-backdrop-show,
        .swal2-container.swal2-noanimation {
            background: rgba(0, 0, 0, .4)
        }

        .swal2-container.swal2-backdrop-hide {
            background: 0 0 !important
        }

        .swal2-container.swal2-bottom-start,
        .swal2-container.swal2-center-start,
        .swal2-container.swal2-top-start {
            grid-template-columns: minmax(0, 1fr) auto auto
        }

        .swal2-container.swal2-bottom,
        .swal2-container.swal2-center,
        .swal2-container.swal2-top {
            grid-template-columns: auto minmax(0, 1fr) auto
        }

        .swal2-container.swal2-bottom-end,
        .swal2-container.swal2-center-end,
        .swal2-container.swal2-top-end {
            grid-template-columns: auto auto minmax(0, 1fr)
        }

        .swal2-container.swal2-top-start>.swal2-popup {
            align-self: start
        }

        .swal2-container.swal2-top>.swal2-popup {
            grid-column: 2;
            align-self: start;
            justify-self: center
        }

        .swal2-container.swal2-top-end>.swal2-popup,
        .swal2-container.swal2-top-right>.swal2-popup {
            grid-column: 3;
            align-self: start;
            justify-self: end
        }

        .swal2-container.swal2-center-left>.swal2-popup,
        .swal2-container.swal2-center-start>.swal2-popup {
            grid-row: 2;
            align-self: center
        }

        .swal2-container.swal2-center>.swal2-popup {
            grid-column: 2;
            grid-row: 2;
            align-self: center;
            justify-self: center
        }

        .swal2-container.swal2-center-end>.swal2-popup,
        .swal2-container.swal2-center-right>.swal2-popup {
            grid-column: 3;
            grid-row: 2;
            align-self: center;
            justify-self: end
        }

        .swal2-container.swal2-bottom-left>.swal2-popup,
        .swal2-container.swal2-bottom-start>.swal2-popup {
            grid-column: 1;
            grid-row: 3;
            align-self: end
        }

        .swal2-container.swal2-bottom>.swal2-popup {
            grid-column: 2;
            grid-row: 3;
            justify-self: center;
            align-self: end
        }

        .swal2-container.swal2-bottom-end>.swal2-popup,
        .swal2-container.swal2-bottom-right>.swal2-popup {
            grid-column: 3;
            grid-row: 3;
            align-self: end;
            justify-self: end
        }

        .swal2-container.swal2-grow-fullscreen>.swal2-popup,
        .swal2-container.swal2-grow-row>.swal2-popup {
            grid-column: 1/4;
            width: 100%
        }

        .swal2-container.swal2-grow-column>.swal2-popup,
        .swal2-container.swal2-grow-fullscreen>.swal2-popup {
            grid-row: 1/4;
            align-self: stretch
        }

        .swal2-container.swal2-no-transition {
            transition: none !important
        }

        .swal2-popup {
            display: none;
            position: relative;
            box-sizing: border-box;
            grid-template-columns: minmax(0, 100%);
            width: 32em;
            max-width: 100%;
            padding: 0 0 1.25em;
            border: none;
            border-radius: 5px;
            background: #fff;
            color: #545454;
            font-family: inherit;
            font-size: 1rem
        }

        .swal2-popup:focus {
            outline: 0
        }

        .swal2-popup.swal2-loading {
            overflow-y: hidden
        }

        .swal2-title {
            position: relative;
            max-width: 100%;
            margin: 0;
            padding: .8em 1em 0;
            color: #595959;
            font-size: 1.875em;
            font-weight: 600;
            text-align: center;
            text-transform: none;
            word-wrap: break-word
        }

        .swal2-actions {
            display: flex;
            z-index: 1;
            box-sizing: border-box;
            flex-wrap: wrap;
            align-items: center;
            justify-content: center;
            width: auto;
            margin: 1.25em auto 0;
            padding: 0
        }

        .swal2-actions:not(.swal2-loading) .swal2-styled[disabled] {
            opacity: .4
        }

        .swal2-actions:not(.swal2-loading) .swal2-styled:hover {
            background-image: linear-gradient(rgba(0, 0, 0, .1), rgba(0, 0, 0, .1))
        }

        .swal2-actions:not(.swal2-loading) .swal2-styled:active {
            background-image: linear-gradient(rgba(0, 0, 0, .2), rgba(0, 0, 0, .2))
        }

        .swal2-loader {
            display: none;
            align-items: center;
            justify-content: center;
            width: 2.2em;
            height: 2.2em;
            margin: 0 1.875em;
            -webkit-animation: swal2-rotate-loading 1.5s linear 0s infinite normal;
            animation: swal2-rotate-loading 1.5s linear 0s infinite normal;
            border-width: .25em;
            border-style: solid;
            border-radius: 100%;
            border-color: #2778c4 transparent #2778c4 transparent
        }

        .swal2-styled {
            margin: .3125em;
            padding: .625em 1.1em;
            transition: box-shadow .1s;
            box-shadow: 0 0 0 3px transparent;
            font-weight: 500
        }

        .swal2-styled:not([disabled]) {
            cursor: pointer
        }

        .swal2-styled.swal2-confirm {
            border: 0;
            border-radius: .25em;
            background: initial;
            background-color: #7367f0;
            color: #fff;
            font-size: 1em
        }

        .swal2-styled.swal2-confirm:focus {
            box-shadow: 0 0 0 3px rgba(115, 103, 240, .5)
        }

        .swal2-styled.swal2-deny {
            border: 0;
            border-radius: .25em;
            background: initial;
            background-color: #ea5455;
            color: #fff;
            font-size: 1em
        }

        .swal2-styled.swal2-deny:focus {
            box-shadow: 0 0 0 3px rgba(234, 84, 85, .5)
        }

        .swal2-styled.swal2-cancel {
            border: 0;
            border-radius: .25em;
            background: initial;
            background-color: #6e7d88;
            color: #fff;
            font-size: 1em
        }

        .swal2-styled.swal2-cancel:focus {
            box-shadow: 0 0 0 3px rgba(110, 125, 136, .5)
        }

        .swal2-styled.swal2-default-outline:focus {
            box-shadow: 0 0 0 3px rgba(100, 150, 200, .5)
        }

        .swal2-styled:focus {
            outline: 0
        }

        .swal2-styled::-moz-focus-inner {
            border: 0
        }

        .swal2-footer {
            justify-content: center;
            margin: 1em 0 0;
            padding: 1em 1em 0;
            border-top: 1px solid #eee;
            color: #545454;
            font-size: 1em
        }

        .swal2-timer-progress-bar-container {
            position: absolute;
            right: 0;
            bottom: 0;
            left: 0;
            grid-column: auto !important;
            height: .25em;
            overflow: hidden;
            border-bottom-right-radius: 5px;
            border-bottom-left-radius: 5px
        }

        .swal2-timer-progress-bar {
            width: 100%;
            height: .25em;
            background: rgba(0, 0, 0, .2)
        }

        .swal2-image {
            max-width: 100%;
            margin: 2em auto 1em
        }

        .swal2-close {
            z-index: 2;
            align-items: center;
            justify-content: center;
            width: 1.2em;
            height: 1.2em;
            margin-top: 0;
            margin-right: 0;
            margin-bottom: -1.2em;
            padding: 0;
            overflow: hidden;
            transition: color .1s, box-shadow .1s;
            border: none;
            border-radius: 5px;
            background: 0 0;
            color: #ccc;
            font-family: serif;
            font-family: monospace;
            font-size: 2.5em;
            cursor: pointer;
            justify-self: end
        }

        .swal2-close:hover {
            transform: none;
            background: 0 0;
            color: #f27474
        }

        .swal2-close:focus {
            outline: 0;
            box-shadow: inset 0 0 0 3px rgba(100, 150, 200, .5)
        }

        .swal2-close::-moz-focus-inner {
            border: 0
        }

        .swal2-html-container {
            z-index: 1;
            justify-content: center;
            margin: 1em 1.6em .3em;
            padding: 0;
            overflow: auto;
            color: #545454;
            font-size: 1.125em;
            font-weight: 400;
            line-height: normal;
            text-align: center;
            word-wrap: break-word;
            word-break: break-word
        }

        .swal2-checkbox,
        .swal2-file,
        .swal2-input,
        .swal2-radio,
        .swal2-select,
        .swal2-textarea {
            margin: 1em 2em 0
        }

        .swal2-file,
        .swal2-input,
        .swal2-textarea {
            box-sizing: border-box;
            width: auto;
            transition: border-color .1s, box-shadow .1s;
            border: 1px solid #d9d9d9;
            border-radius: .1875em;
            background: inherit;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .06), 0 0 0 3px transparent;
            color: inherit;
            font-size: 1.125em
        }

        .swal2-file.swal2-inputerror,
        .swal2-input.swal2-inputerror,
        .swal2-textarea.swal2-inputerror {
            border-color: #f27474 !important;
            box-shadow: 0 0 2px #f27474 !important
        }

        .swal2-file:focus,
        .swal2-input:focus,
        .swal2-textarea:focus {
            border: 1px solid #b4dbed;
            outline: 0;
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .06), 0 0 0 3px rgba(100, 150, 200, .5)
        }

        .swal2-file::-moz-placeholder,
        .swal2-input::-moz-placeholder,
        .swal2-textarea::-moz-placeholder {
            color: #ccc
        }

        .swal2-file:-ms-input-placeholder,
        .swal2-input:-ms-input-placeholder,
        .swal2-textarea:-ms-input-placeholder {
            color: #ccc
        }

        .swal2-file::placeholder,
        .swal2-input::placeholder,
        .swal2-textarea::placeholder {
            color: #ccc
        }

        .swal2-range {
            margin: 1em 2em 0;
            background: #fff
        }

        .swal2-range input {
            width: 80%
        }

        .swal2-range output {
            width: 20%;
            color: inherit;
            font-weight: 600;
            text-align: center
        }

        .swal2-range input,
        .swal2-range output {
            height: 2.625em;
            padding: 0;
            font-size: 1.125em;
            line-height: 2.625em
        }

        .swal2-input {
            height: 2.625em;
            padding: 0 .75em
        }

        .swal2-file {
            width: 75%;
            margin-right: auto;
            margin-left: auto;
            background: inherit;
            font-size: 1.125em
        }

        .swal2-textarea {
            height: 6.75em;
            padding: .75em
        }

        .swal2-select {
            min-width: 50%;
            max-width: 100%;
            padding: .375em .625em;
            background: inherit;
            color: inherit;
            font-size: 1.125em
        }

        .swal2-checkbox,
        .swal2-radio {
            align-items: center;
            justify-content: center;
            background: #fff;
            color: inherit
        }

        .swal2-checkbox label,
        .swal2-radio label {
            margin: 0 .6em;
            font-size: 1.125em
        }

        .swal2-checkbox input,
        .swal2-radio input {
            flex-shrink: 0;
            margin: 0 .4em
        }

        .swal2-input-label {
            display: flex;
            justify-content: center;
            margin: 1em auto 0
        }

        .swal2-validation-message {
            align-items: center;
            justify-content: center;
            margin: 1em 0 0;
            padding: .625em;
            overflow: hidden;
            background: #f0f0f0;
            color: #666;
            font-size: 1em;
            font-weight: 300
        }

        .swal2-validation-message::before {
            content: "!";
            display: inline-block;
            width: 1.5em;
            min-width: 1.5em;
            height: 1.5em;
            margin: 0 .625em;
            border-radius: 50%;
            background-color: #f27474;
            color: #fff;
            font-weight: 600;
            line-height: 1.5em;
            text-align: center
        }

        .swal2-icon {
            position: relative;
            box-sizing: content-box;
            justify-content: center;
            width: 5em;
            height: 5em;
            margin: 2.5em auto .6em;
            border: .25em solid transparent;
            border-radius: 50%;
            border-color: #000;
            font-family: inherit;
            line-height: 5em;
            cursor: default;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none
        }

        .swal2-icon .swal2-icon-content {
            display: flex;
            align-items: center;
            font-size: 3.75em
        }

        .swal2-icon.swal2-error {
            border-color: #f27474;
            color: #f27474
        }

        .swal2-icon.swal2-error .swal2-x-mark {
            position: relative;
            flex-grow: 1
        }

        .swal2-icon.swal2-error [class^=swal2-x-mark-line] {
            display: block;
            position: absolute;
            top: 2.3125em;
            width: 2.9375em;
            height: .3125em;
            border-radius: .125em;
            background-color: #f27474
        }

        .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=left] {
            left: 1.0625em;
            transform: rotate(45deg)
        }

        .swal2-icon.swal2-error [class^=swal2-x-mark-line][class$=right] {
            right: 1em;
            transform: rotate(-45deg)
        }

        .swal2-icon.swal2-error.swal2-icon-show {
            -webkit-animation: swal2-animate-error-icon .5s;
            animation: swal2-animate-error-icon .5s
        }

        .swal2-icon.swal2-error.swal2-icon-show .swal2-x-mark {
            -webkit-animation: swal2-animate-error-x-mark .5s;
            animation: swal2-animate-error-x-mark .5s
        }

        .swal2-icon.swal2-warning {
            border-color: #facea8;
            color: #f8bb86
        }

        .swal2-icon.swal2-info {
            border-color: #9de0f6;
            color: #3fc3ee
        }

        .swal2-icon.swal2-question {
            border-color: #c9dae1;
            color: #87adbd
        }

        .swal2-icon.swal2-success {
            border-color: #a5dc86;
            color: #a5dc86
        }

        .swal2-icon.swal2-success [class^=swal2-success-circular-line] {
            position: absolute;
            width: 3.75em;
            height: 7.5em;
            transform: rotate(45deg);
            border-radius: 50%
        }

        .swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=left] {
            top: -.4375em;
            left: -2.0635em;
            transform: rotate(-45deg);
            transform-origin: 3.75em 3.75em;
            border-radius: 7.5em 0 0 7.5em
        }

        .swal2-icon.swal2-success [class^=swal2-success-circular-line][class$=right] {
            top: -.6875em;
            left: 1.875em;
            transform: rotate(-45deg);
            transform-origin: 0 3.75em;
            border-radius: 0 7.5em 7.5em 0
        }

        .swal2-icon.swal2-success .swal2-success-ring {
            position: absolute;
            z-index: 2;
            top: -.25em;
            left: -.25em;
            box-sizing: content-box;
            width: 100%;
            height: 100%;
            border: .25em solid rgba(165, 220, 134, .3);
            border-radius: 50%
        }

        .swal2-icon.swal2-success .swal2-success-fix {
            position: absolute;
            z-index: 1;
            top: .5em;
            left: 1.625em;
            width: .4375em;
            height: 5.625em;
            transform: rotate(-45deg)
        }

        .swal2-icon.swal2-success [class^=swal2-success-line] {
            display: block;
            position: absolute;
            z-index: 2;
            height: .3125em;
            border-radius: .125em;
            background-color: #a5dc86
        }

        .swal2-icon.swal2-success [class^=swal2-success-line][class$=tip] {
            top: 2.875em;
            left: .8125em;
            width: 1.5625em;
            transform: rotate(45deg)
        }

        .swal2-icon.swal2-success [class^=swal2-success-line][class$=long] {
            top: 2.375em;
            right: .5em;
            width: 2.9375em;
            transform: rotate(-45deg)
        }

        .swal2-icon.swal2-success.swal2-icon-show .swal2-success-line-tip {
            -webkit-animation: swal2-animate-success-line-tip .75s;
            animation: swal2-animate-success-line-tip .75s
        }

        .swal2-icon.swal2-success.swal2-icon-show .swal2-success-line-long {
            -webkit-animation: swal2-animate-success-line-long .75s;
            animation: swal2-animate-success-line-long .75s
        }

        .swal2-icon.swal2-success.swal2-icon-show .swal2-success-circular-line-right {
            -webkit-animation: swal2-rotate-success-circular-line 4.25s ease-in;
            animation: swal2-rotate-success-circular-line 4.25s ease-in
        }

        .swal2-progress-steps {
            flex-wrap: wrap;
            align-items: center;
            max-width: 100%;
            margin: 1.25em auto;
            padding: 0;
            background: inherit;
            font-weight: 600
        }

        .swal2-progress-steps li {
            display: inline-block;
            position: relative
        }

        .swal2-progress-steps .swal2-progress-step {
            z-index: 20;
            flex-shrink: 0;
            width: 2em;
            height: 2em;
            border-radius: 2em;
            background: #2778c4;
            color: #fff;
            line-height: 2em;
            text-align: center
        }

        .swal2-progress-steps .swal2-progress-step.swal2-active-progress-step {
            background: #2778c4
        }

        .swal2-progress-steps .swal2-progress-step.swal2-active-progress-step~.swal2-progress-step {
            background: #add8e6;
            color: #fff
        }

        .swal2-progress-steps .swal2-progress-step.swal2-active-progress-step~.swal2-progress-step-line {
            background: #add8e6
        }

        .swal2-progress-steps .swal2-progress-step-line {
            z-index: 10;
            flex-shrink: 0;
            width: 2.5em;
            height: .4em;
            margin: 0 -1px;
            background: #2778c4
        }

        [class^=swal2] {
            -webkit-tap-highlight-color: transparent
        }

        .swal2-show {
            -webkit-animation: swal2-show .3s;
            animation: swal2-show .3s
        }

        .swal2-hide {
            -webkit-animation: swal2-hide .15s forwards;
            animation: swal2-hide .15s forwards
        }

        .swal2-noanimation {
            transition: none
        }

        .swal2-scrollbar-measure {
            position: absolute;
            top: -9999px;
            width: 50px;
            height: 50px;
            overflow: scroll
        }

        .swal2-rtl .swal2-close {
            margin-right: initial;
            margin-left: 0
        }

        .swal2-rtl .swal2-timer-progress-bar {
            right: 0;
            left: auto
        }

        @-webkit-keyframes swal2-toast-show {
            0% {
                transform: translateY(-.625em) rotateZ(2deg)
            }

            33% {
                transform: translateY(0) rotateZ(-2deg)
            }

            66% {
                transform: translateY(.3125em) rotateZ(2deg)
            }

            100% {
                transform: translateY(0) rotateZ(0)
            }
        }

        @keyframes swal2-toast-show {
            0% {
                transform: translateY(-.625em) rotateZ(2deg)
            }

            33% {
                transform: translateY(0) rotateZ(-2deg)
            }

            66% {
                transform: translateY(.3125em) rotateZ(2deg)
            }

            100% {
                transform: translateY(0) rotateZ(0)
            }
        }

        @-webkit-keyframes swal2-toast-hide {
            100% {
                transform: rotateZ(1deg);
                opacity: 0
            }
        }

        @keyframes swal2-toast-hide {
            100% {
                transform: rotateZ(1deg);
                opacity: 0
            }
        }

        @-webkit-keyframes swal2-toast-animate-success-line-tip {
            0% {
                top: .5625em;
                left: .0625em;
                width: 0
            }

            54% {
                top: .125em;
                left: .125em;
                width: 0
            }

            70% {
                top: .625em;
                left: -.25em;
                width: 1.625em
            }

            84% {
                top: 1.0625em;
                left: .75em;
                width: .5em
            }

            100% {
                top: 1.125em;
                left: .1875em;
                width: .75em
            }
        }

        @keyframes swal2-toast-animate-success-line-tip {
            0% {
                top: .5625em;
                left: .0625em;
                width: 0
            }

            54% {
                top: .125em;
                left: .125em;
                width: 0
            }

            70% {
                top: .625em;
                left: -.25em;
                width: 1.625em
            }

            84% {
                top: 1.0625em;
                left: .75em;
                width: .5em
            }

            100% {
                top: 1.125em;
                left: .1875em;
                width: .75em
            }
        }

        @-webkit-keyframes swal2-toast-animate-success-line-long {
            0% {
                top: 1.625em;
                right: 1.375em;
                width: 0
            }

            65% {
                top: 1.25em;
                right: .9375em;
                width: 0
            }

            84% {
                top: .9375em;
                right: 0;
                width: 1.125em
            }

            100% {
                top: .9375em;
                right: .1875em;
                width: 1.375em
            }
        }

        @keyframes swal2-toast-animate-success-line-long {
            0% {
                top: 1.625em;
                right: 1.375em;
                width: 0
            }

            65% {
                top: 1.25em;
                right: .9375em;
                width: 0
            }

            84% {
                top: .9375em;
                right: 0;
                width: 1.125em
            }

            100% {
                top: .9375em;
                right: .1875em;
                width: 1.375em
            }
        }

        @-webkit-keyframes swal2-show {
            0% {
                transform: scale(.7)
            }

            45% {
                transform: scale(1.05)
            }

            80% {
                transform: scale(.95)
            }

            100% {
                transform: scale(1)
            }
        }

        @keyframes swal2-show {
            0% {
                transform: scale(.7)
            }

            45% {
                transform: scale(1.05)
            }

            80% {
                transform: scale(.95)
            }

            100% {
                transform: scale(1)
            }
        }

        @-webkit-keyframes swal2-hide {
            0% {
                transform: scale(1);
                opacity: 1
            }

            100% {
                transform: scale(.5);
                opacity: 0
            }
        }

        @keyframes swal2-hide {
            0% {
                transform: scale(1);
                opacity: 1
            }

            100% {
                transform: scale(.5);
                opacity: 0
            }
        }

        @-webkit-keyframes swal2-animate-success-line-tip {
            0% {
                top: 1.1875em;
                left: .0625em;
                width: 0
            }

            54% {
                top: 1.0625em;
                left: .125em;
                width: 0
            }

            70% {
                top: 2.1875em;
                left: -.375em;
                width: 3.125em
            }

            84% {
                top: 3em;
                left: 1.3125em;
                width: 1.0625em
            }

            100% {
                top: 2.8125em;
                left: .8125em;
                width: 1.5625em
            }
        }

        @keyframes swal2-animate-success-line-tip {
            0% {
                top: 1.1875em;
                left: .0625em;
                width: 0
            }

            54% {
                top: 1.0625em;
                left: .125em;
                width: 0
            }

            70% {
                top: 2.1875em;
                left: -.375em;
                width: 3.125em
            }

            84% {
                top: 3em;
                left: 1.3125em;
                width: 1.0625em
            }

            100% {
                top: 2.8125em;
                left: .8125em;
                width: 1.5625em
            }
        }

        @-webkit-keyframes swal2-animate-success-line-long {
            0% {
                top: 3.375em;
                right: 2.875em;
                width: 0
            }

            65% {
                top: 3.375em;
                right: 2.875em;
                width: 0
            }

            84% {
                top: 2.1875em;
                right: 0;
                width: 3.4375em
            }

            100% {
                top: 2.375em;
                right: .5em;
                width: 2.9375em
            }
        }

        @keyframes swal2-animate-success-line-long {
            0% {
                top: 3.375em;
                right: 2.875em;
                width: 0
            }

            65% {
                top: 3.375em;
                right: 2.875em;
                width: 0
            }

            84% {
                top: 2.1875em;
                right: 0;
                width: 3.4375em
            }

            100% {
                top: 2.375em;
                right: .5em;
                width: 2.9375em
            }
        }

        @-webkit-keyframes swal2-rotate-success-circular-line {
            0% {
                transform: rotate(-45deg)
            }

            5% {
                transform: rotate(-45deg)
            }

            12% {
                transform: rotate(-405deg)
            }

            100% {
                transform: rotate(-405deg)
            }
        }

        @keyframes swal2-rotate-success-circular-line {
            0% {
                transform: rotate(-45deg)
            }

            5% {
                transform: rotate(-45deg)
            }

            12% {
                transform: rotate(-405deg)
            }

            100% {
                transform: rotate(-405deg)
            }
        }

        @-webkit-keyframes swal2-animate-error-x-mark {
            0% {
                margin-top: 1.625em;
                transform: scale(.4);
                opacity: 0
            }

            50% {
                margin-top: 1.625em;
                transform: scale(.4);
                opacity: 0
            }

            80% {
                margin-top: -.375em;
                transform: scale(1.15)
            }

            100% {
                margin-top: 0;
                transform: scale(1);
                opacity: 1
            }
        }

        @keyframes swal2-animate-error-x-mark {
            0% {
                margin-top: 1.625em;
                transform: scale(.4);
                opacity: 0
            }

            50% {
                margin-top: 1.625em;
                transform: scale(.4);
                opacity: 0
            }

            80% {
                margin-top: -.375em;
                transform: scale(1.15)
            }

            100% {
                margin-top: 0;
                transform: scale(1);
                opacity: 1
            }
        }

        @-webkit-keyframes swal2-animate-error-icon {
            0% {
                transform: rotateX(100deg);
                opacity: 0
            }

            100% {
                transform: rotateX(0);
                opacity: 1
            }
        }

        @keyframes swal2-animate-error-icon {
            0% {
                transform: rotateX(100deg);
                opacity: 0
            }

            100% {
                transform: rotateX(0);
                opacity: 1
            }
        }

        @-webkit-keyframes swal2-rotate-loading {
            0% {
                transform: rotate(0)
            }

            100% {
                transform: rotate(360deg)
            }
        }

        @keyframes swal2-rotate-loading {
            0% {
                transform: rotate(0)
            }

            100% {
                transform: rotate(360deg)
            }
        }

        body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown) {
            overflow: hidden
        }

        body.swal2-height-auto {
            height: auto !important
        }

        body.swal2-no-backdrop .swal2-container {
            background-color: transparent !important;
            pointer-events: none
        }

        body.swal2-no-backdrop .swal2-container .swal2-popup {
            pointer-events: all
        }

        body.swal2-no-backdrop .swal2-container .swal2-modal {
            box-shadow: 0 0 10px rgba(0, 0, 0, .4)
        }

        @media print {
            body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown) {
                overflow-y: scroll !important
            }

            body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown)>[aria-hidden=true] {
                display: none
            }

            body.swal2-shown:not(.swal2-no-backdrop):not(.swal2-toast-shown) .swal2-container {
                position: static !important
            }
        }

        body.swal2-toast-shown .swal2-container {
            box-sizing: border-box;
            width: 360px;
            max-width: 100%;
            background-color: transparent;
            pointer-events: none
        }

        body.swal2-toast-shown .swal2-container.swal2-top {
            top: 0;
            right: auto;
            bottom: auto;
            left: 50%;
            transform: translateX(-50%)
        }

        body.swal2-toast-shown .swal2-container.swal2-top-end,
        body.swal2-toast-shown .swal2-container.swal2-top-right {
            top: 0;
            right: 0;
            bottom: auto;
            left: auto
        }

        body.swal2-toast-shown .swal2-container.swal2-top-left,
        body.swal2-toast-shown .swal2-container.swal2-top-start {
            top: 0;
            right: auto;
            bottom: auto;
            left: 0
        }

        body.swal2-toast-shown .swal2-container.swal2-center-left,
        body.swal2-toast-shown .swal2-container.swal2-center-start {
            top: 50%;
            right: auto;
            bottom: auto;
            left: 0;
            transform: translateY(-50%)
        }

        body.swal2-toast-shown .swal2-container.swal2-center {
            top: 50%;
            right: auto;
            bottom: auto;
            left: 50%;
            transform: translate(-50%, -50%)
        }

        body.swal2-toast-shown .swal2-container.swal2-center-end,
        body.swal2-toast-shown .swal2-container.swal2-center-right {
            top: 50%;
            right: 0;
            bottom: auto;
            left: auto;
            transform: translateY(-50%)
        }

        body.swal2-toast-shown .swal2-container.swal2-bottom-left,
        body.swal2-toast-shown .swal2-container.swal2-bottom-start {
            top: auto;
            right: auto;
            bottom: 0;
            left: 0
        }

        body.swal2-toast-shown .swal2-container.swal2-bottom {
            top: auto;
            right: auto;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%)
        }

        body.swal2-toast-shown .swal2-container.swal2-bottom-end,
        body.swal2-toast-shown .swal2-container.swal2-bottom-right {
            top: auto;
            right: 0;
            bottom: 0;
            left: auto
        }

        .cke {
            visibility: hidden;
        }

        * {
            word-break: keep-all;
        }

        footer {
            display: none;
        }

        /* ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- */
        :root {
            --color-1a1e23: #1a1e23;
            --color-000: #000;
            --color-00f: #00f;
            --color-03f: #03f;
            --color-fff: #fff;
            --color-f2f2f2: #f2f2f2;
            --color-dcdcde: #dcdcde;
            --color-a7a7a7: #a7a7a7;
            --color-303439: #303439;
            --box-shadow-L: 0 20px 40px rgba(0, 0, 0, .5);
            --box-shadow-M: 0 15px 30px rgba(0, 0, 0, .25);
            --box-shadow-S: 0 5px 10px rgba(0, 0, 0, .5);
            --box-shadow-M-03f: 0 10px 30px rgba(0, 50, 255, 0.75);
            --box-shadow-S-03f: 0 5px 15px rgba(0, 50, 255, 0.75);
        }

        .h_type1 {
            font-size: 55px;
            font-weight: 700;
            color: var(--color-fff);
            position: relative;
        }

        .h_type1::before {
            position: absolute;
            right: 100%;
            top: 50%;
            transform: translate(-30px, -50%);
            content: '';
            width: 200px;
            height: 1px;
            background: var(--color-fff);
        }

        .swiper {
            overflow: hidden;
        }

        .swiper-button-next,
        .swiper-button-prev {
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            margin: 0;
            padding: 0;
            position: relative;
            background: none;
            display: flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            color: var(--color-fff);
            border: 1px solid var(--color-fff);
        }

        .swiper-button-next::after,
        .swiper-button-prev::after {
            display: none;
        }



        .b_type1 {
            margin: 0 auto;
            padding: 10px 20px;
            background: var(--color-03f);
            color: var(--color-fff);
            text-align: center;
            border-radius: 100px;
            min-width: 120px;
            transition: all .3s ease;
            font-size: 18px;
        }

        /* 주히 추가 case 문의 버튼 위치 수정 */
        .b_type2 {
            margin: auto;
            padding: 6px 5px;
            background: var(- -color-03f);
            color: var(- -color-fff);
            text-align: center;
            border-radius: 10px;
            min-width: 50px;
            transition: all .3s ease;
            display: inline-block;
            font-size: 15px;
        }

        .b_type3 {
            margin: auto;
            padding: 10px 20px;
            background: var(--color-03f);
            color: var(--color-fff);
            text-align: center;
            border-radius: 100px;
            min-width: 120px;
            transition: all .3s ease;
            display: inline-block;
            font-size: 18px;
        }

        .b_type4 {
            margin: auto;
            padding: 10px 20px;
            background: var(--color-03f);
            color: var(--color-fff);
            text-align: center;
            border-radius: 100px;
            min-width: 120px;
            transition: all .3s ease;
            display: inline-block;
            margin-right: 5%;
            font-size: 18px;
        }

        .b_type1:hover,
        .b_type2:hover,
        .b_type3:hover,
        .b_type:hover {
            color: #fff;
            box-shadow: var(--box-shadow-S-03f);
        }

        .main_wrap {
            position: relative;
            width: 100%;
            height: 100vh;
            display: flex;
            padding: 40px;
            background: var(--color-1a1e23);
            transition: all .3s ease;
        }

        .main_wrap .main_header {
            position: absolute;
            top: 40px;
            z-index: 1000000;
            width: 100%;
            display: flex;
            justify-content: space-between;
            padding: 0 40px;
            align-items: center;
        }

        .main_wrap .main_header ul {
            display: flex;
            gap: 0 60px;
        }

        .main_wrap .main_header ul li a {
            position: relative;
        }

        .main_wrap .main_header ul li a::after {
            position: absolute;
            left: 0;
            top: calc(100% + 5px);
            content: '';
            width: 0;
            height: 2px;
            background: var(--color-03f);
            transition: all .3s ease;
        }

        .main_wrap .main_header ul li:hover a::after,
        .main_wrap .main_header ul li.on a::after {
            width: 100%;
        }

        .main_wrap .main_header ul li a {
            color: var(--color-dcdcde);
            font-size: 18px;
        }

        .main_wrap .main_header ul li:hover a,
        .main_wrap .main_header ul li.on a {
            color: var(--color-fff);
        }

        .main_wrap .main_header .logo {
            display: flex;
            align-items: center;
        }

        .main_wrap .main_header .logo .img {
            min-width: 80px;
            max-width: 80px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .main_wrap .main_header .logo .img img {
            width: 100%;
        }

        .main_wrap .main_header .logo span {
            color: var(--color-fff);
            font-size: 20px;
            height: 100%;
            display: flex;
            align-items: center;
            transition: all .5s ease;
            padding-left: 0;
            letter-spacing: -30;
            opacity: 0;
            margin-left: -20px;
        }

        .main_wrap .main_header .logo:hover span {
            padding-left: 20px;
            letter-spacing: 2;
            opacity: 1;
            margin-left: 0;
        }

        .main_wrap .copy {
            position: absolute;
            left: 40px;
            bottom: 40px;
            z-index: 10000000;
            color: var(--color-dcdcde);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 16px;
            opacity: 1;
        }

        .main_wrap .copy::after {
            position: absolute;
            left: calc(100% + 10px);
            bottom: 5px;
            width: 60px;
            height: 1px;
            background: var(--color-dcdcde);
            content: '';
        }

        .main_wrap .copy i {
            margin-right: 10px;
        }

        .modal_logout {
            position: fixed;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            content: '';
            width: 100vw;
            height: 100vh;
            z-index: 9999999999999999999;
            display: flex;
            align-items: center;
            justify-content: center;
            visibility: hidden;
            opacity: 0;
            transition: all .3s ease;
        }

        .modal_logout.on {
            visibility: inherit;
            opacity: 1;
        }

        .modal_logout .bg {
            background: var(--color-000);
            opacity: .75;
            width: 100%;
            height: 100%;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            content: '';
            z-index: -1;
        }

        .modal_logout .container {
            background: var(--color-1a1e23);
            border: 4px solid var(--color-000);
            border-radius: 30px;
            padding: 60px;
            z-index: 1;
            box-shadow: var(--box-shadow-M);
            gap: 60px;
            align-items: center;
            position: relative;
            max-width: 1200px;
            width: 100%;
            margin: 0 auto;
            transition: all .3s ease;
            transform: translateY(-100%);
            text-align: center;
            margin: 0 auto;
        }

        .modal_logout.on .container {
            transform: translateY(0);
        }

        .modal_logout .container .xi-close-thin {
            position: absolute;
            left: 50%;
            top: 0;
            transform: translate(-50%, -50%);
            width: 60px;
            height: 60px;
            background: var(--color-fff);
            border-radius: 50%;
            color: var(--color-000);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 20px;
            box-shadow: var(--box-shadow-S);
            cursor: pointer;
        }

        .modal_logout .container .xi-close-thin::before {
            transition: all .3s ease;
        }

        .modal_logout .container .xi-close-thin:hover::before {
            transform: rotate(180deg);
        }

        .modal_logout .content_info {
            display: flex;
            flex-direction: column;
        }

        .modal_logout .content_info h2 {
            color: var(--color-fff);
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 30px;
        }

        .modal_logout .content_info ul {
            display: flex;
            flex-direction: column;
            display: block;
        }

        .modal_logout .content_info ul li {
            font-size: 18px;
            display: list-item;
            text-align: -webkit-match-parent;
        }


        /* main_start */
        .main_wrap .main_swiper {
            width: calc(100% - 140px);
            border: 4px solid var(--color-000);
            border-radius: 30px;
            box-shadow: var(--box-shadow-L);
            background: var(--color-1a1e23);
            overflow: hidden;
        }

        .main_wrap .main_pagination {
            display: flex;
            flex-direction: column;
            gap: 20px 0;
            right: 40px;
        }

        .main_wrap .main_pagination .swiper-pagination-bullet {
            margin: 0;
            width: 15px;
            height: 15px;
            border: 1px solid var(--color-dcdcde);
            transition: all .3s ease;
            background: none;
            opacity: .5;
        }

        .main_wrap .main_pagination .swiper-pagination-bullet-active {
            background: var(--color-03f);
            border: 1px solid var(--color-03f);
            opacity: 1;
        }

        @media(max-width:1440px) {}

        @media(max-width:1024px) {
            .main_wrap .main_header .logo:hover span {
                display: none;
            }

            .main_wrap .main_header .logo {
                width: 80px;
            }

            .main_wrap .main_header ul {
                gap: 0 40px
            }

            .main_wrap .main_header ul li a {
                font-size: 14px;
            }

            .main_wrap .main_pagination {
                display: none;
            }
        }

        @media(max-width:768px) {
            .main_wrap {
                padding: 0;
                border: 0;
            }

            .main_wrap .side_menu {
                display: none;
            }

            .main_wrap .main_swiper {
                width: 100%;
                border: 0;
                border-radius: 0;
            }
        }

        @media (max-width:540px) {
            .main_wrap .main_header {
                top: 20px;
                align-items: flex-start;
                padding: 0 20px;
            }

            .main_wrap .main_header ul {
                flex-direction: column;
                gap: 10px 0;
            }

            .main_wrap .main_header ul li {
                text-align: right;
            }

            .main_wrap .main_header ul li a {
                text-align: right;
            }

            .main_wrap .main_pagination .swiper-pagination-bullet {
                width: 12px;
                height: 12px;
            }

            .main_wrap .main_header ul li a::after {
                top: 100%;
            }
        }

        .sec4 {
            background: url(./resources/images/sec4_bg.jpg) no-repeat center / cover;
            position: relative;
            z-index: 1;
        }

        .sec4::before {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            content: '';
            width: 100%;
            height: 100%;
            background: url(./resources/images/big_img1_blur.png) no-repeat center / 100% 100%;
            z-index: -1;
        }

        .sec4 .container {
            max-width: 1500px;
            width: 100%;
            margin: 0 auto;
            height: 100%;
            display: flex;
            align-items: center;
            gap: 0 15px;
        }

        .sec4 .info_group {
            display: flex;
            flex-direction: column;
            gap: 20px;
            width: 50%;
            margin-bottom: 120px;
        }

        .sec4 .info_group ul {
            display: flex;
            flex-direction: column;
            gap: 20px 0;
        }

        .sec4 .info_group ul li {
            display: flex;
            font-size: 16px;
            color: var(--color-fff);
            gap: 0 20px;
            position: relative;
        }

        .sec4 .info_group ul li .desc1 {
            width: 75px;
            font-weight: 700;
            opacity: .75;
        }

        .sec4 .info_group ul li .desc2 {
            width: calc(100% - 75px);
            font-weight: 500;
            opacity: .5;
        }

        .sec4 .input_group {
            padding: 30px;
            border-radius: 20px;
            background: var(--color-1a1e23);
            box-shadow: var(--box-shadow-M);
            /* width: 80%; */
            display: flex;
            flex-direction: column;
            gap: 15px 0;
            /* margin-right: 50px; */
        }

        .modal_logout .input_group {
            padding: 30px;
            border-radius: 20px;
            background: var(--color-1a1e23);
            width: 50%;
            display: flex;
            flex-direction: column;
            gap: 15px 0;
            margin: 0 auto;
        }

        .sec4 .input_group .group,
        .modal_logout .input_group .group {
            display: flex;
            flex-direction: column;
            gap: 30px 0;
        }

        .sec4 .input_group .tit {
            display: flex;
            flex-direction: column;
            gap: 10px 0;
            text-align: center
        }


		/* 2023-01-31 border color 변경_지수 */
        .sec4 .input_group .tit1 {
            border: 1px solid #1F2429;
            text-align: center;

        }

        .sec4 .input_group .tit h3 {
            font-size: 24px;
            font-weight: 700;
            color: var(--color-fff);
        }

        .sec4 .input_group .tit p {
            font-size: 16px;
            font-weight: 500;
            color: var(--color-fff);
            opacity: .5;
        }

        .sec4 .input_group ul,
        .modal_logout .input_group ul {
            display: flex;
            flex-direction: column;
            gap: 15px 0;
        }

        .sec4 .input_group ul li,
        .modal_logout .input_group ul li {
            position: relative;
        }

/*         .sec4 .input_group ul li::after {
            position: absolute;
            left: 15px;
            top: 0;
            transform: translateY(-50%);
            padding: 3px 5px;
            content: attr(data);
            font-size: 10px;
            color: var(--color-a7a7a7);
            background: var(--color-1a1e23);
        } */

        .sec4 .input_group ul li input,
        .sec4 .input_group ul li textarea,
        .modal_logout .input_group ul li input {
            background: none;
            width: 100%;
            border-radius: 5px;
            border: 1px solid var(--color-a7a7a7);
            padding: 15px;
            color: var(--color-fff);
            outline: var(--color-fff);
        }

        .sec4 .input_group ul li input,
        .modal_logout .input_group ul li input {
            height: 45px;
        }

        .sec4 .input_group ul li textarea {
            resize: none;
            height: 100px;
        }

        .sec4 .btn_bottom {
            width: 100%;
            display: flex;
            justify-content: center;
            margin-top: 15px;
            transition: all .3s ease;
        }

        .modal_logout .input_group .btn_bottom {
            width: 100%;
            display: flex;
            justify-content: center;
            margin-top: 30px;
            transition: all .3s ease;

        }

        @media (max-width:1550px) {
            .sec4 .container {
                padding: 0 40px;
            }
        }

        @media(max-width:1440px) {}

        @media(max-width:1024px) {
            .sec4 .container {
                gap: 30px;
                flex-direction: column;
                justify-content: center;
            }

            .sec4 .input_group {
                width: 100%;
            }

            .sec4 .info_group {
                display: none;
            }

            .sec4 .input_group ul {
                flex-direction: row;
                flex-wrap: wrap;
                margin: -5px;
                gap: 5;
            }

            .sec4 .input_group ul li {
                width: calc(50% - 10px);
                margin: 5px;
            }

            .sec4 .input_group ul li:last-child {
                width: 100%;
            }
        }

        @media(max-width:768px) {
            .sec4 .input_group .tit h3 {
                font-size: 20px;
            }

            .sec4 .input_group .tit p {
                font-size: 14px;
            }
        }

        @media(max-width:550px) {
            .sec4 .input_group ul li {
                width: 100%;
                margin: 0;
            }
        }

        /* Mode_Change*/
        .main_wrap.white {
            background: var(--color-f2f2f2);
        }
        
        /* 지수 추가 */
/*         .testimg{
        	width: 530px;
        	height: 320px;
        } */
        
        .tit_group {
         	position: absolute;
            width: 100%;
            display: flex;
            justify-content: space-between;
            margin-bottom: 500px;
        }
        .tit {
            display: flex;
            align-items: flex-end;
            gap: 0 30px;
            margin-bottom: 5%;
        }
        .tit * {
            line-height: 1;
        }

        .tit p {
            font-size: 16px;
            color: var(--color-fff);
            opacity: .5;
            transform: translateY(-7px);
            line-height: 1.4;
        }
        /* li { list-style:none;} */
        /* select */
        .selectBox2 * { box-sizing: border-box; }
		.selectBox2 {
		  position: relative;
		  width: 300px;
		  height: 35px;
		  border-radius: 4px;
		  border: 2px solid #a9aaac;
		  background-size: 20px;
		  cursor: pointer;
		  display:-webkit-inline-box;
		}
		
		.selectBox2:after {
		  content: '';
		  display: block;
		  width: 2px;
		  height: 100%; 
		  position: absolute; 
		  top: 0; 
		  right: 35px;
		  background: #a9aaac;
		}
		
		.selectBox2 .label {
		  display: flex;
		  align-items: center;
		  width: inherit;
		  height: inherit;
		  border: 0 none;
		  outline: 0 none;
		  padding-left: 20px;
		  background: transparent;
		  cursor: pointer;
		  font-size: 14px;
		}
		
		.selectBox2 .optionList {
		  position: absolute; 
		  top: 28px;
		  left: 0;
		  width: 100%;
		  background: #a9aaacf7;
    	  color: #373636;
		  list-style-type: none;
		  padding: 0;
		  border-radius: 6px;
		  overflow: auto;
		  max-height: 0;
		  transition: .3s ease-in;
		}
		
		.selectBox2.active .optionList {
		  max-height: 500px;
		}
		
		.selectBox2 .optionItem {
		  border-bottom: 1px dashed #777;
		  padding: 5px 15px 5px;
		  transition: .1s;
		  font-size: x-large;
		}
		
		.selectBox2 .optionItem:hover {
		  background: rgba(77, 109, 239, 0.25);
		}
		
		.selectBox2 .optionItem:last-child {
		  border-bottom: 0 none;
		}
		.selectBnt{
			display: -webkit-box;
		    margin-left: 5px;
		    border-radius: inherit;
		    background-color: a9aaac;
		    width: 38px;
		}
		
		// 스크롤 커스텀
		.selectBox2 .optionList::-webkit-scrollbar {width: 6px;}
		.selectBox2 .optionList::-webkit-scrollbar-track {background: transparent; }
		.selectBox2 .optionList::-webkit-scrollbar-thumb {background: #303030; border-radius: 45px;}
		.selectBox2 .optionList::-webkit-scrollbar-thumb:hover {background: #303030;}
		
    </style>


    <script src="resources/plugins/validation/jquery.validate.min.js"></script>
    <script src="resources/plugins/validation/additional-methods.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="resources/js/bootstrap-dialog.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js/dist/chart.umd.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css" rel="stylesheet"
        type="text/css">
    <script src="resources/plugins/ckeditor/ckeditor.js"></script>
    <script src="resources/js/jquery.fullPage.js"></script>
    <script src="resources/js/common.js"></script>
    <script src="resources/js/front-board.js"></script>
    <script src="resources/js/default.js"></script>
    <script src="resources/js/front.js"></script>
    <link rel="shortcut icon" href="/resources/images/favicon.png">
    <link rel="icon" href="resources/images/favicon.png">
    <script>
        if (/MSIE \d|Trident.*rv:/.test(navigator.userAgent)) {
            window.location.href = "microsoft-edge:" + window.location.href;
            setTimeout(function () {
                window.location = 'https://go.microsoft.com/fwlink/?linkid=2135547';
            }, 1);
        }
    </script>
</head>

<body>

    <div class="main_wrap">
        <div class="swiper main_swiper swiper-container-initialized swiper-container-vertical">
            <div class="main_header">
                <a href="index.do" onclick="location.href='index.do'" class="logo">
                    <div class="img"><img src="./resources/images/weed_log2.jpg"></div>
                    <span class="en"> <b>WHO WITH SERVICE</b></span>
                </a>
                <ul class="gnb">
                    <li><a href="index.do" class="en" onclick="location.href='index.do'"><span>Home</span></a></li>
                    <div class="btn_bottom" style="z-index: 100; margin-top: -10px;">
                        <button type="submit" class="b_type3" onclick="">${member.email}</button>
                    </div>

                </ul>
            </div>

            <!-- 추가 -->
            <section class="swiper-slide sec4" style="height: 881px; margin-bottom: 30px;">
                <div class="container">
                	<!-- 제목 -->
                	<div class="tit_group" >
                            <div class="tit">
                                <h2 class="h_type1 en"><span>Panoptic Analysis</span></h2>
                                <p>19개 class로 분할한 기술로 Object Count 와 인식 정확도를 Chart로 간편하게 확인하세요.  
                                </p>
                            </div>
                    </div>
                    <!-- 비디오 위치 -->
					<div class="input_group"
						style="width: 400px; height: 553px; margin-top: 10%;">
					<!-- select  -->
						<div class="selectBox2 ">
							<button class="label">객체선택 🍊</button>
						
							<ul class="optionList">
								<li class="optionItem"><input type='checkbox' name='object'
									value='0' style="width: 20px; height: 20px;" /> road</li>
								<li class="optionItem"><input type='checkbox' name='object'
									value='1' style="width: 20px; height: 20px;" /> sidewalk</li>
								<li class="optionItem"><input type='checkbox' name='object' value='2'
									style="width: 20px; height: 20px;" /> building</li>
								<li class="optionItem"><input type='checkbox' name='object' value='3'
									style="width: 20px; height: 20px;" /> wall</li>
								<li class="optionItem"><input type='checkbox' name='object' value='4'
									style="width: 20px; height: 20px;" /> fence</li>
								<li class="optionItem"><input type='checkbox' name='object' value='5'
									style="width: 20px; height: 20px;" /> pole</li>
								<li class="optionItem"><input type='checkbox' name='object' value='6'
									style="width: 20px; height: 20px;" /> traffic light</li>
								<li class="optionItem"><input type='checkbox' name='object' value='7'
									style="width: 20px; height: 20px;" /> traffic sign</li>
								<li class="optionItem"><input type='checkbox' name='object' value='8'
									style="width: 20px; height: 20px;" /> vegetation</li>
								<li class="optionItem"><input type='checkbox' name='object' value='9'
									style="width: 20px; height: 20px;" /> terrain</li>
								<li class="optionItem"><input type='checkbox' name='object' value='10'
									style="width: 20px; height: 20px;" /> sky</li>
								<li class="optionItem"><input type='checkbox' name='object' value='11'
									style="width: 20px; height: 20px;" /> person</li>
								<li class="optionItem"><input type='checkbox' name='object' value='12'
									style="width: 20px; height: 20px;" /> rider</li>
								<li class="optionItem"><input type='checkbox' name='object' value='13'
									style="width: 20px; height: 20px;" /> car</li>
								<li class="optionItem"><input type='checkbox' name='object' value='14'
									style="width: 20px; height: 20px;" /> truck</li>
								<li class="optionItem"><input type='checkbox' name='object' value='15'
									style="width: 20px; height: 20px;" /> bus</li>
								<li class="optionItem"><input type='checkbox' name='object' value='16'
									style="width: 20px; height: 20px;" /> train</li>
								<li class="optionItem"><input type='checkbox' name='object' value='17'
									style="width: 20px; height: 20px;" /> motorcycle</li>
								<li class="optionItem"><input type='checkbox' name='object' value='18'
									style="width: 20px; height: 20px;" /> bicycle</li>
							</ul>
							<button type="submit" id="submit" class="selectBnt" onclick='getCheckboxValue()'>Apply</button>
						</div>

                        
						<div class="group">
							<div class="tit1" id="realTestimg">
								<img class="testimg" src="./resources/images/image.jpg"
									style="width: 100%; max-width: 450px; vertical-align: middle">
							</div>
						</div>

						<div class="group">
							<div class="tit1">
								<img src="./resources/images/image.jpg"
									style="width: 100%; max-width: 450px; vertical-align: middle">
							</div>
						</div>
					</div>

					<!-- chart.js -->
                    <div class="input_group" style="margin-top: 10%;">
                        <div class="group">
                        	<div class="tit" style="align-items: center;">
                                <h3>Object Table</h3>
                            </div>
                            <div class="chartCard">
							  <div class="chartBox">
							    <canvas id="myChart" style="width: 600px;  height: 415px;"></canvas>
							  </div>
							</div>
                        </div>
                    </div>
                    
                    
                    <div class="input_group" style="margin-top: 10%;">
                        <div class="group">
                        	<div class="tit" style="align-items: center;">
                                <h3>Stuff Table</h3>
                            </div>
		                    <div class="chartCard">
							  <div class="chartBox">
							    <canvas id="DChart" style="width: 353px;  height: 430px; display:block;"></canvas>
							  </div>
							</div>
                        </div>
                    </div>
                
                </div>
                
            
            </section>




            <!-- 로그아웃 -->
            <div class="modal_logout">
                <div class="bg"></div>
                <div class="container">
                    <i class="xi-close-thin"></i>`
                    <div class="content_info">
                        <h2>로그아웃 하시겠습니까?</h2>
                        <ul>
                            <div class="btn_bottom">
                                <button type="submit" class="b_type4" onclick="location.href='Main.do'">네</button>
                                <button type="submit" class="b_type1" onclick="location.href=''">아니오</button>
                            </div>
                        </ul>
                    </div>
                </div>
            </div>

            <!-- 홈 -->
            <!-- 홈버튼 누르면 처음 페이지 -->


            <script>
                $(document).ready(function () {
                    $('.main_wrap .side_menu .mode_change').click(function () {
                        $(this).toggleClass('on')
                        if ($(".main_wrap .side_menu .mode_change").hasClass("on")) {
                            $(".main_wrap").addClass("white")
                        } else {
                            $(".main_wrap").removeClass("white")
                        }
                    });

                    // modal_logout는 로그아웃
                    $('.main_wrap .b_type3').click(function () {
                        $('.modal_logout').addClass('on')
                    });

                    $('.modal_logout .container .xi-close-thin').click(function () {
                        $('.modal_logout').removeClass('on')
                    });

                    $('.modal_logout .bg').click(function () {
                        $('.modal_logout').removeClass('on')
                    });


                    $('.main_wrap .fix_menu > i').click(function () {
                        $('.main_wrap .fix_menu').toggleClass('on')
                    })
                });

            </script>
            
            <script>
                     /* 이미지 미리보기 */
                         function previewImg() {
					let preview = document.querySelector('.testimg');
					let file = document.querySelector('input[type=file]').files[0];
					let reader = new FileReader();

					reader.addEventListener(
						'load',
						function () {
							preview.src = reader.result;
							console.log(reader.result);
						},
						false
					);

					if (file) {
						reader.readAsDataURL(file);
						/* console.log(reader.readAsDataURL(file)); */
					}
				}
                         
            </script>
            <script>
			    // scatter setup 
			    const L_data = {
			      labels: ['person', 'rider', 'car', 'truck', 'bus', 'train', 'motorcycle', 'bicycle'],
			      datasets: [{
			        label: 'Object Count',
			        data: [18, 12, 6, 9, 12, 3, 9,10],
			        backgroundColor: [
			          'rgba(255,107,107,0.2)',
			          'rgba(255,159,67, 0.2)',
			          'rgba(254,202,87, 0.2)',
			          'rgba(243,104,224, 0.2)',
			          'rgba(16,172,132, 0.2)',
			          'rgba(0,210,211, 0.2)',
			          'rgba(46,134,222, 0.2)',
			          'rgba(200,214,229, 0.2)'
			        ],
			        borderColor: [
		             'rgba(255,107,107,1)',
			          'rgba(255,159,67, 1)',
			          'rgba(254,202,87, 1)',
			          'rgba(243,104,224, 1)',
			          'rgba(16,172,132, 1)',
			          'rgba(0,210,211, 1)',
			          'rgba(46,134,222, 1)',
			          'rgba(200,214,229, 1)'
			        ],
			        borderWidth: 1
			      },{
			          type : 'line',
			          label: 'Object Accuracy',
			          data: [80, 95, 70, 66, 90, 98, 88,50],
			          backgroundColor: [
			        	  'rgba(84,160,255,0.2)'
			          ],
			          borderColor: [
			        	  'rgba(84,160,255,1)'

			          ]
			        }]
			    };
			
			    // config 
			    const L_config = {
			      type: 'bar',
			      data: L_data,
			      options: {
			        scales: {
			          responsive: false,
			          y: {
			            beginAtZero: true
			          }
			        }
			      }
			    };
			
			    // render init block
			    const myChart = new Chart(
			      document.getElementById('myChart'),
			      L_config
			    );
			 </script>
			 
			 <!-- 도넛차트 -->
			 <script>
				let selectedDatasetIndex = undefined;
				let selectedIndex = undefined;
				
			
				// setup 
				const data = {
						labels: ['road', 'sidewalk', 'building', 'wall', 'fence', 'pole', 'traffic light', 'traffic sign', 'vegetation', 'terrain', 'sky'],
					    datasets: [{
						    label: 'Stuff Accuracy',
				    	    data: [80, 95, 70, 66, 90, 98, 30,50,70,77,90],
				        	backgroundColor: [
					          'rgba(255, 26, 104, 0.2)',
					          'rgba(54, 162, 235, 0.2)',
					          'rgba(255, 206, 86, 0.2)',
					          'rgba(75, 192, 192, 0.2)',
					          'rgba(153, 102, 255, 0.2)',
					          'rgba(200, 159, 64, 0.2)',
					          'rgba(102, 159, 64, 0.2)',
					          'rgba(55, 159, 64, 0.2)',
					          'rgba(5, 159, 64, 0.2)',
					          'rgba(45, 159, 64, 0.2)',
					          'rgba(0, 0, 0, 0.2)'
					        ],
					        borderColor: [
						          'rgba(255, 26, 104, 1)',
						          'rgba(54, 162, 235, 1)',
						          'rgba(255, 206, 86, 1)',
						          'rgba(75, 192, 192, 1)',
						          'rgba(153, 102, 255, 1)',
						          'rgba(200, 159, 64, 1)',
						          'rgba(102, 159, 64, 1)',
						          'rgba(55, 159, 64, 1)',
						          'rgba(5, 159, 64, 1)',
						          'rgba(45, 159, 64, 1)',
						          'rgba(0, 0, 0, 1)'
					        ],
						    borderWidth: 1,
						    cutout: '70%',
						    borderRadius: 5,
						    offset: 10
				  	}]
				};		
				
				// clickLabel pugin block
		  		const clickLabel = {
					id: 'clickLabel',
					afterDraw: (chart, args, options) => {
						const { ctx, chartArea: { width, height, top } } = chart;
						
						
						
						if(selectedDatasetIndex >= 0) {
							console.log(chart.data.datasets[selectedDatasetIndex].data[selectedIndex]);
							const sum = chart._metasets[selectedDatasetIndex].total;
							const value = chart._metasets[selectedDatasetIndex]._parsed[selectedIndex];
							const color = chart.data.datasets[selectedDatasetIndex].borderColor[selectedIndex];
							const percentage = value / sum * 100;
							const accuracy = chart.data.datasets[selectedDatasetIndex].data[selectedIndex];
			
							ctx.save();
							ctx.font = 'bolder 60px Arial';
							ctx.fillStyle = color;
							ctx.textAlign = 'center';
							ctx.textBaseline = 'middle';
							ctx.fillText(accuracy + '%', width/2, height/2 + top);
							ctx.restore();
						}
					}
				} 
				
				// config 
				const config = {
					type: 'doughnut',
				    data:data,
				    options: {
				    	responsive: false,
						mainTainAspectRatio: false,
		 				plugins: {
							legend: {
								display: true,
								position: 'bottom'
							}
				 		},
						onClick(click, element, chart) {
							//console.log(element[0].datasetIndex)
							if(element[0]) {
								selectedDatasetIndex = element[0].datasetIndex;
								selectedIndex = element[0].index;
								chart.draw();
							}
						}
					},
					plugins: [clickLabel]
				};
				
				// render init block
				const DChart = new Chart(
				   document.getElementById('DChart'),
				   config
				);
			</script>
			
			
			<!-- 다중체크박스  -->
			<script type="text/javascript">
			const label = document.querySelector('.label');
			const options = document.querySelectorAll('.optionItem');

			label.addEventListener('click', function(){
			  if(label.parentNode.classList.contains('active')) {
			    label.parentNode.classList.remove('active');
			  } else {
			    label.parentNode.classList.add('active');
			  }
			});
			//value 값만 나옴
 			function getCheckboxValue()  {
				  // 선택된 목록 가져오기
				  const query = 'input[name="object"]:checked';
				  const selectedEls = 
				      document.querySelectorAll(query);
				  
				  // 선택된 목록에서 value 찾기
				  let result = '';
				  selectedEls.forEach((el) => {
				    result += el.value + ' ';
				  });
				  // 출력
				  console.log(result);
				  
			 	  $.ajax({
						url : "ArrSocket.do",
						type : 'post',
						data : result,
						success : function(data) {
							console.log("데이터 전송 성공이야");
			     		}/* ,
			     		error function() {
			     			alert("error");
			     		} */
				});
				  
			}; 
				
			//배열에 담음 
/* 			    function getCheckboxValue(){
			        var obj = $("[name=object]");
			        var chkArray = new Array(); // 배열 선언
			 
			        $('input:checkbox[name=object]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
			            chkArray.push(this.value);
			        });
			        
			        console.log(chkArray);
			        
			    } */
			    
			</script>
			
            <footer>
                <div class="f_top">
                    <ul>
                        <li><a href="/info/privacy">개인정보 취급방침</a></li>
                        <li><a href="/info/tos">이용약관</a></li>
                        <li><a href="/info/email">이메일무단수집거부</a></li>
                    </ul>
                </div>

                <div class="f_inner">

                    <div class="f_info">
                        <address>
                            <p>주소 : 위드컴퍼니</p>
                            <p>대표 : 위드컴퍼니</p>
                            <p>E-mail : weed@with.com</p>
                            <p>전화번호 : 010-7771-1241 : </p>
                        </address>
                        <p class="cope">Copyright ⓒ WD</p>
                    </div>
                    <div class="f_logo">
                        <img src="/resources/images/foot-logo.png">
                    </div>

                </div>
            </footer>
            <!--- !! 절대 지우지 마세요 !! --->
            <iframe name="ifrm" style="display: none"></iframe>
            <script>
                $(function () {
                })
            </script>
            <!--- !! 절대 지우지 마세요 !! --->


</body>

</html>