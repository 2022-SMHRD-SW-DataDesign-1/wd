<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>위드컴퍼니</title>
    <meta name="X-CSRF-TOKEN" content="9e1df29c77b7a592462f8a7808050758">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--css-->
    <link href="resources/css/bootstrap.min.css?20230117122237" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css">
    <link href="resources/css/jquery.fullpage.css?20230117122237" rel="stylesheet">
    <link href="resources/css/jquery.ui.min.css?20230117122237" rel="stylesheet">
    <link href="//pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet">
    <link href="resources/plugins/sweetalert2/sweetalert2.min.css" rel="stylesheet" type="text/css">
    <link href="resources/plugins/ckeditor/plugins/codesnippet/lib/highlight/styles/monokai_sublime.css" rel="stylesheet">
    <link href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css" rel="stylesheet">
    <link href="resources/css/bootstrap-dialog.css" rel="stylesheet" type="text/css">
    <link href="resources/css/front.css?20230117122237" rel="stylesheet">
    <link href="resources/css/board.css?20230117122237" rel="stylesheet">
    <link href="resources/css/default.css?20230117122237" rel="stylesheet">
    <link href="resources/css/main.css?20230117122237" rel="stylesheet">
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
            grid-template-areas: "top-start     top            top-end""center-start  center         center-end""bottom-start  bottom-center  bottom-end";
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
    </style>

    <script src="/plugins/validation/jquery.validate.min.js"></script>
    <script src="/plugins/validation/additional-methods.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="/js/bootstrap-dialog.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css" rel="stylesheet"
        type="text/css">
    <script src="/plugins/ckeditor/ckeditor.js"></script>
    <script src="/js/jquery.fullPage.js?20230117122237"></script>
    <script src="/js/common.js?20230117122237"></script>
    <script src="/js/front-board.js?20230117122237"></script>
    <script src="/js/default.js?20230117122237"></script>
    <script src="/js/front.js?20230117122237"></script>
    <link rel="shortcut icon" href="resources/images/favicon.png">
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
    <div></div>
    <style>
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
            font-size: 60px;
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
            padding: 10px 20px;
            background: var(--color-03f);
            color: var(--color-fff);
            text-align: center;
            border-radius: 100px;
            min-width: 120px;
            transition: all .3s ease;
            font-size: 18px;
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
            font-size: 18px;
        }
        
         .b_type5 {
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

        .b_type1:hover,
        .b_type2:hover,
        .b_type3:hover,
        .b_type4:hover,
        .b_type5:hover {
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


        @media(max-width:540px) {

            .main_wrap .copy {
                left: 20px;
                font-size: 14px;
                bottom: 20px;
            }
        }

        .main_wrap .mode_change {
            position: absolute;
            right: 1%;
            bottom: 30px;
            transform: translate(-50%, 0);
            width: 25px;
            height: 7px;
            border-radius: 100px;
            background: var(--color-dcdcde);
            cursor: pointer;
        }

        .main_wrap .mode_change span {
            position: absolute;
            top: 50%;
            left: -2px;
            transform: translate(0, -50%);
            width: 14px;
            height: 14px;
            border-radius: 50%;
            background: var(--color-dcdcde);
            border: 1px solid var(--color-1a1e23);
            transition: all .3s ease;
        }

        .main_wrap .mode_change.on span {
            left: calc(100% + 3px);
            transform: translate(-100%, -50%);
        }

        .modal_add,
        .modal_manager,
        .modal_user,
        .modal_user_plus {
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

        .modal_add.on,
        .modal_manager.on,
        .modal_user.on,
        .modal_user_plus.on {
            visibility: inherit;
            opacity: 1;
        }

        .modal_add .bg,
        .modal_manager .bg,
        .modal_user .bg,
        .modal_user_plus .bg {
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

        .modal_add .container {
            display: flex;
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
        }

        .modal_manager .container,
        .modal_user .container,
        .modal_user_plus .container {
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

        .modal_add.on .container,
        .modal_manager.on .container,
        .modal_user.on .container,
        .modal_user_plus.on .container {
            transform: translateY(0);
        }

        .modal_add .container .xi-close-thin,
        .modal_manager .container .xi-close-thin,
        .modal_user .container .xi-close-thin,
        .modal_user_plus .container .xi-close-thin {
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

        .modal_add .container .xi-close-thin::before,
        .modal_manager .container .xi-close-thin::before,
        .modal_user .container .xi-close-thin::before,
        .modal_user_plus .container .xi-close-thin::before {
            transition: all .3s ease;
        }

        .modal_add .container .xi-close-thin:hover::before,
        .modal_manager .container .xi-close-thin:hover::before,
        .modal_user .container .xi-close-thin:hover::before,
        .modal_user_plus .container .xi-close-thin:hover::before {
            transform: rotate(180deg);
        }

        .modal_add .content_info,
        .modal_manager .content_info,
        .modal_user .content_info,
        .modal_user_plus .content_info {
            display: flex;
            flex-direction: column;
        }

        .modal_add .content_info h2,
        .modal_manager .content_info h2,
        .modal_user .content_info h2,
        .modal_user_plus .content_info h2 {
            color: var(--color-fff);
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 30px;
        }

        .modal_add .content_info ul {
            display: flex;
            flex-direction: column;
            gap: 15px 0;
        }

        .modal_user_plus .content_info ul,
        .modal_user .content_info ul,
        .modal_manager .content_info ul {
            display: flex;
            flex-direction: column;
            display: block;
        }

        .modal_user_plus .content_info ul li,
        .modal_user .content_info ul li,
        .modal_manager .content_info ul li {
            font-size: 18px;
            display: list-item;
            text-align: -webkit-match-parent;
        }

        .modal_add .content_info ul li {
            font-size: 18px;
            color: var(--color-fff);
            display: flex;
            gap: 15px;
        }

        .modal_add .content_info ul li .desc1 {
            font-weight: 400;
            width: 50px;
            position: relative;
            z-index: 1;
            text-align: center;
            font-size: 14px;
        }

        .modal_add .content_info ul li .desc1::after {
            position: absolute;
            left: 0;
            top: 15px;
            content: '';
            width: 100%;
            height: 6px;
            background: var(--color-03f);
            transition: all .3s ease;
            z-index: -1;
        }

        .modal_add .content_info ul li .desc2 {
            width: calc(100% - 65px);
            font-weight: 400;
            opacity: .5;
            word-break: keep-all;
        }

        /* main_start */
        .main_wrap .main_swiper {
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

        .sec1 .swiper {
            height: 100%;
        }

        .sec1 .swiper-slide {
            position: relative;
            z-index: 1;
            background: url(./resources/images/sec1_bg.jpg) no-repeat center / cover;
        }

        .sec1 .swiper-slide::before {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            content: '';
            width: 100%;
            height: 100%;
            background: url(./resources/images/big_img1_blur.png) no-repeat center / 100% 100%;
        }

        .sec1 .swiper-slide .container {
            max-width: 1400px;
            width: 100%;
            height: 100%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .sec1 .swiper-slide .group_top {
            display: flex;
            align-items: flex-end;
            margin-bottom: 30px;
        }

        .sec1 .swiper-slide .next_box {
            display: flex;
            font-size: 20px;
            font-weight: 900;
            gap: 30px;
            color: var(--color-fff);
            transition: all .3s ease;
            margin-left: 30px;
            transform: translateY(5px);
        }

        .sec1 .swiper-slide .next_box div {
            position: relative;
            transition: all .3s ease;
        }

        .sec1 .swiper-slide .next_box div::after {
            position: absolute;
            left: 0;
            top: calc(100% + 5px);
            content: '';
            width: 0;
            height: 2px;
            background: var(--color-03f);
            transition: all .3s ease;
        }

        .sec1 .swiper-slide .next_box div:hover::after {
            width: 100%;
        }

        .sec1 .swiper-slide .next_box .prev {
            opacity: .5;
        }

        .sec1 .swiper-slide .next_box .next {
            color: var(--color-fff);
        }

        .sec1 .swiper-slide .next_box div:hover {
            opacity: 1;
        }

        .sec1 .swiper-slide .paging {
            width: 70px;
            height: 60px;
            position: relative;
            transform: translateX(-25px);
        }

        .sec1 .swiper-slide .paging span {
            position: absolute;
            color: var(--color-fff);
            line-height: 1;
        }

        .sec1 .swiper-slide .paging .desc1 {
            left: 0;
            top: 0;
            opacity: .5;
            font-size: 20px;
        }

        .sec1 .swiper-slide .paging .desc2 {
            right: 0;
            bottom: -5px;
            font-size: 40px;
            font-weight: 700;
            color: var(--color-fff);
        }

        .sec1 .swiper-slide .txt_box {
            display: flex;
            flex-direction: column;
            margin-bottom: 120px;
        }

        .sec1 .swiper-slide .txt_box h2 {
            font-size: 60px;
            font-weight: 700;
            color: var(--color-fff);
            margin-bottom: 30px;
            display: flex;
            flex-direction: column;
        }

        .sec1 .swiper-slide .txt_box h2 b {
            -webkit-text-stroke: 0.5px var(0035ff);
            color: #0035ff;
            font-weight: 1000;

        }

        .sec1 .swiper-slide .txt_box h2 .desc1 {
            opacity: 0;
            transform: translateX(-60px);
            transition: all .5s ease;
        }

        .sec1 .swiper-slide .txt_box h2 .desc2 {
            opacity: 0;
            transform: translateX(-60px);
            transition: all .5s ease;
        }

        .sec1 .swiper-slide .txt_box p {
            opacity: 0;
            font-size: 20px;
            font-weight: 400;
            color: var(--color-fff);
            letter-spacing: 3px;
            opacity: .75;
            transform: translateX(-60px);
            transition: all .5s ease;

        }

        .sec1 .swiper-slide-active .txt_box h2 .desc1 {
            transform: translateX(0);
            transition-delay: 0;
            opacity: 1;
        }

        .sec1 .swiper-slide-active .txt_box h2 .desc2 {
            transform: translateX(0);
            transition-delay: .1s;
            opacity: 1;
        }

        .sec1 .swiper-slide-active .txt_box p {
            transform: translateX(0);
            transition-delay: .2s;
            opacity: .5;
        }

        .sec1 .slide2 .txt_box p,
        .sec1 .slide3 .txt_box p {
            letter-spacing: 1;
        }

        @media (max-width:1695px) {
            .sec1 .swiper-slide .container {
                padding: 0 40px;
            }
        }

        @media (max-width:1440px) {
            .sec1 .swiper-slide .txt_box h2 {
                font-size: 45px;
            }

            .sec1 .swiper-slide .txt_box p {
                font-size: 18px;
            }
        }

        @media (max-width:1024px) {
            .sec1 .swiper-slide .txt_box h2 {
                font-size: 36px;
            }

            .sec1 .swiper-slide .txt_box p {
                font-size: 16px;
            }

            .sec1 .swiper-slide .paging .desc2 {
                font-size: 36px;
            }
        }

        @media (max-width:768px) {
            .sec1 .swiper-slide .txt_box {
                margin: 0;
                padding-right: 40px;
            }

            .sec1 .swiper-slide .txt_box p {
                font-size: 14px;
            }
        }

        @media (max-width:470px) {
            .sec1 .swiper-slide .txt_box h2 {
                font-size: 24px;
            }

            .sec1 .swiper-slide .txt_box p {
                font-size: 12px;
            }

            .sec1 .swiper-slide .paging {
                width: 40px;
                height: 30px;
            }

            .sec1 .swiper-slide .paging .desc1 {
                font-size: 12px;
            }

            .sec1 .swiper-slide .paging .desc2 {
                font-size: 24px;
            }

            .sec1 .swiper-slide .next_box div {
                font-size: 14px;
                font-weight: 500;
            }
        }

       .sec2 {
            position: relative;
        }

        .sec2 .tit_group {
            width: 100%;
            display: flex;
            justify-content: space-between;
        }

        .sec2 .tit {
            display: flex;
            align-items: flex-end;
            gap: 0 30px;
            margin-bottom: 5%;
        }

        .sec2 .tit * {
            line-height: 1;
        }

        .sec2 .tit p {
            font-size: 16px;
            color: var(--color-fff);
            opacity: .5;
            transform: translateY(-7px);
            line-height: 1.4;
        }

        .sec2 .container {
            max-width: 1400px;
            width: 100%;
            height: 100%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            justify-content: center;
            position: relative;
        }

        .sec2 .container::before {
            position: absolute;
            right: 0;
            bottom: 0;
            width: 728px;
            height: 728px;
            background: url(./resources/images/bg_item_1.png) no-repeat center / 100%;
            content: '';
            opacity: .25;
            transform: translate(50%, 50%);
            animation: sec2_spin 55000ms linear infinite forwards;
        }

        @keyframes sec2_spin {
            from {
                transform: translate(50%, 50%) rotate(0);
            }

            to {
                transform: translate(50%, 50%) rotate(360deg);
            }
        }

        .sec2 .swiper {
            padding: 30px 40px;
            height: 420px;
        }

        .sec2 .item {
            box-shadow: var(--box-shadow-M);
            background: var(--color-1a1e23);
            padding: 30px;
            border-radius: 20px;
        }

        .sec2 .item h3 {
            font-size: 50px;
            color: var(--color-fff);
            font-weight: 700;
            text-align: center;
            margin-bottom:20px;
        }

        .sec2 .item p {
            font-size: 18px;
            line-height: 2;
            word-break: keep-all;
            color: var(--color-fff);
            opacity: .5;
            margin-bottom: 20px;
            height: 200px;
        }

        @media (max-width:1695px) {
            .sec2 .container {
                padding: 0 40px;
            }
        }

        @media(max-width:1440px) {
            .h_type1 {
                font-size: 45px;
            }
        }

        @media(max-width:768px) {
            .sec2 .item {
                padding: 20px;
            }

            .sec2 .item h3 {
                font-size: 20px;
            }

            .sec2 .item p {
                font-size: 12px;
            }

            .sec2 .h_type1 {
                padding: 0 40px;
            }

            .sec2 .container {
                padding: 0;
            }
        }

.sec3 .container {
            max-width: 1400px;
            width: 100%;
            margin: 0 auto;
            height: 100%;
            display: flex;
            gap: 40px 0;
            flex-direction: column;
            justify-content: center;
            position:relative;
        }

        .sec3 .tit_group {
            width: 100%;
            display: flex;
            justify-content: space-between;
        }

        .sec3 .tit {
            display: flex;
            align-items: flex-end;
            gap: 0 30px;
            margin-bottom: 5%;
        }

        .sec3 .tit * {
            line-height: 1;
        }

        .sec3 .tit p {
            font-size: 16px;
            color: var(--color-fff);
            opacity: .5;
            transform: translateY(-7px);
            line-height: 1.4;
        }

        .sec3 .next_box {
            display: flex;
            gap: 0 15px;
            align-items: flex-end;
        }

        .sec3 .content {
            width: 80%;
            display: flex;
            gap: 0 30px;
            margin-left: 10%;
        }

        .sec3 .swiper-slide .img_box {
            display: flex;
            width: 100%;
            align-items: center;
            justify-content: center;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: var(--box-shadow-M);
        }

        .sec3 .swiper-slide .img_box img {
            width: 100%;
        }

        .sec3 .swiper-slide .txt_box {
            padding: 15px 10px;
            color: var(--color-fff);
            position: absolute;
            bottom: 5px;
            left: 12px;

        }

        .sec3 .swiper-slide .txt_box h3 {
            font-size: 20px;
            font-weight: 700;
        }

        .sec3 .swiper-slide .txt_box p {
            font-size: 16px;
            opacity: .5;
        }

        .sec3 .swiper-button-next,
        .sec3 .swiper-button-prev {
            opacity: .5;
            transition: all .3s ease;
        }

        .sec3 .swiper-button-next,
        .sec3 .swiper-button-prev:hover {
            opacity: .75;
        }

        .sec3 .swiper-button-next:hover,
        .sec3 .swiper-button-prev:hover {
            opacity: 1;
            background: var(--color-fff);
            border-color: transparent;
            color: var(--color-000);
        }

        @media(max-width:1695px) {
            .sec3 .container {
                padding: 0 40px;
            }
        }

        @media (max-width:1440px) {}

        @media (max-width:1150px) {
            .sec3 .tit {
                flex-direction: column;
                align-items: flex-start;
                gap: 15px;
            }
        }

        @media(max-width:768px) {
            .sec3 .swiper-slide .txt_box h3 {
                font-size: 20px;
            }

            .sec3 .swiper-slide .txt_box p {
                font-size: 14px;
            }
        }

        @media (max-width:660px) {
            .sec3 .tit_group {
                flex-direction: column;
                gap: 20px;
            }
        }

        @media(max-width:425px) {
            .sec3 .tit {
                text-align: center;
                align-items: center;
            }

            .sec3 .tit h2::before {
                display: none;
            }

            .sec3 .next_box {
                justify-content: center;
            }

            .sec3 .swiper-slide .txt_box {
                text-align: center;
            }

            .sec3 .swiper-slide .txt_box h3 {
                font-size: 18px;
                margin-bottom: 5px;
            }

            .sec3 .swiper-slide .txt_box p {
                font-size: 12px;
            }
        }

        .sec5 .container {
            max-width: 1400px;
            width: 100%;
            margin: 0 auto;
            height: 100%;
            display: flex;
            gap: 40px 0;
            flex-direction: column;
            justify-content: center;
        }

        .sec5 .tit_group {
            width: 100%;
            display: flex;
            justify-content: space-between;
        }

        .sec5 .tit {
            display: flex;
            align-items: flex-end;
            gap: 0 30px;
            margin-bottom: 2%;
        }

        .sec5 .tit * {
            line-height: 1;
        }

        .sec5 .tit p {
            font-size: 16px;
            color: var(--color-fff);
            opacity: .5;
            transform: translateY(-7px);
            line-height: 1.4;
        }

        .sec5 .next_box {
            display: flex;
            gap: 0 15px;
            align-items: flex-end;
        }

        .sec5 .content {
            width: 80%;
            display: flex;
            gap: 0 30px;
            margin-left: 10%;
        }

        .sec5 .input_group {
            padding: 30px;
            border-radius: 20px;
            background: var(--color-1a1e23);
            box-shadow: var(--box-shadow-M);
            width: 100%;
            display: flex;
            flex-direction: column;
            gap: 15px 0;
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
            max-width: 1240px;
            width: 100%;
            margin: 0 auto;
            height: 100%;
            display: flex;
            align-items: center;
            gap: 0 60px;
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
            font-size: 20px;
            color: var(--color-fff);
            gap: 0 20px;
            position: relative;
        }

        .sec4 .info_group ul li .desc1 {
            width: 100px;
            font-weight: 700;
            opacity: .75;
        }

        .sec4 .info_group ul li .desc2 {
            width: calc(100% - 75px);
            font-weight: 500;
            opacity: .5;
        }

        .sec4 .input_group {
            padding: 25px;
            border-radius: 20px;
            background: var(--color-1a1e23);
            box-shadow: var(--box-shadow-M);
            width: 65%;
            display: flex;
            flex-direction: column;
            gap: 15px 0;
        }


        .modal_user_plus .input_group,
        .modal_user .input_group,
        .modal_manager .input_group {
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
        .modal_user_plus .input_group .group,
        .modal_user .input_group .group,
        .modal_manager .input_group .group {
            display: flex;
            flex-direction: column;
            gap: 30px 0;
        }

        .sec4 .input_group .tit {
            display: flex;
            flex-direction: column;
            gap: 10px 0;
        }

        .sec4 .input_group .tit h3 {
            font-size: 30px;
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
        .modal_user_plus .input_group ul,
        .modal_user .input_group ul,
        .modal_manager .input_group ul {
            display: flex;
            flex-direction: column;
            gap: 15px 0;
        }

        .sec4 .input_group ul li,
        .modal_user_plus .input_group ul li,
        .modal_user .input_group ul li,
        .modal_manager .input_group ul li {
            position: relative;
        }

        .sec4 .input_group ul li::after {
            position: absolute;
            left: 15px;
            top: 0;
            transform: translateY(-50%);
            padding: 3px 5px;
            content: attr(data);
            font-size: 10px;
            color: var(--color-a7a7a7);
            background: var(--color-1a1e23);
        }

        .sec4 .input_group ul li input,
        .sec4 .input_group ul li textarea,
        .modal_user_plus .input_group ul li input,
        .modal_user .input_group ul li input,
        .modal_manager .input_group ul li input {
            background: none;
            width: 100%;
            border-radius: 5px;
            border: 1px solid var(--color-a7a7a7);
            padding: 15px;
            color: var(--color-fff);
            outline: var(--color-fff);
        }

        .sec4 .input_group ul li input,
        .modal_user_plus .input_group ul li input,
        .modal_user .input_group ul li input,
        .modal_manager .input_group ul li input {
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
            margin-top: 20px;
            transition: all .3s ease;
        }

        .modal_user_plus .input_group .btn_bottom,
        .modal_user .input_group .btn_bottom,
        .modal_manager .input_group .btn_bottom {
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

        .sec4 .input_group ul p {
            color: white;
            font-size: 17px;
        }

        .sec4 .input_group ul li label input {
            width: 15px;
            height: 15px;
            margin-right: 5px;
        }

        .sec4 .input_group ul li label span {
            margin-right: 20px;
            color: var(--color-a7a7a7);
            font-size: 15px;
        }

        /* Mode_Change*/
        .main_wrap.white {
            background: var(--color-f2f2f2);
        }

    </style> 

    <!-- 시작 -->

    <div class="main_wrap">
        <div class="swiper main_swiper swiper-container-initialized swiper-container-vertical">
            <div class="main_header">
                <a href="Main.do" class="logo">
                    <div class="img"><img src="./resources/images/weed_log2.jpg"></div>
                    <span class="en"> <b>WHO WITH SERVICE</b></span>
                </a>
                <ul class="gnb">
                    <li class="on"><a href="javascript:void(0)" class="en"><span>Index</span></a></li>
                    <li><a href="javascript:void(0)" class="en"><span>Developer</span></a></li>
                    <li><a href="javascript:void(0)" class="en"><span>Case Study</span></a></li>
                    <li><a href="javascript:void(0)" class="en"><span>Contact</span></a></li>
                    <div class="btn_bottom" style="z-index: 100; margin-top:-10px;">
                        <button type="submit" class="b_type3" onclick="">Sign Up</button>
                    </div>
                </ul>
            </div>

            <!-- index -->
            <div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
                <section class="swiper-slide sec1 swiper-slide-active" style="height: 881px; margin-bottom: 30px;">
                    <div
                        class="swiper sec1_swiper swiper-container-fade swiper-container-initialized swiper-container-horizontal">
                        <div class="swiper-wrapper" style="transition-duration: 0ms;">
                            <div class="swiper-slide slide3 swiper-slide-duplicate swiper-slide-duplicate-next"
                                style="width: 679px; transition-duration: 0ms; opacity: 1; transform: translate3d(0px, 0px, 0px);"
                                data-swiper-slide-index="2">
                                <div class="container">
                                    <div class="content">
                                        <div class="group_top">
                                            <div class="paging en">
                                                <span class="desc1">03</span>
                                                <span class="desc2">03</span>
                                            </div>
                                            <div class="next_box">
                                                <div class="prev" tabindex="0" role="button"
                                                    aria-label="Previous slide">PREV</div>
                                                <div class="next" tabindex="0" role="button" aria-label="Next slide">
                                                    NEXT</div>
                                            </div>
                                        </div>
                                        <div class="txt_box">
                                            <h2 class="tit">
                                                <span class="desc1">우리는 <b>수준 높은</b></span>
                                                <span class="desc2"><b>결과물</b>을 만듭니다.</span>
                                            </h2>
                                            <div class="btn_bottom" style="z-index: 100;">
                                                <button type="submit" class="b_type3" onclick="">Sign Up</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide slide1 swiper-slide-prev"
                                style="width: 679px; transition-duration: 0ms; opacity: 1; transform: translate3d(-679px, 0px, 0px);"
                                data-swiper-slide-index="0">
                                <div class="container">
                                    <div class="content">
                                        <div class="group_top">
                                            <div class="paging en">
                                                <span class="desc1">03</span>
                                                <span class="desc2">01</span>
                                            </div>
                                            <div class="next_box">
                                                <div class="prev" tabindex="0" role="button"
                                                    aria-label="Previous slide">PREV</div>
                                                <div class="next" tabindex="0" role="button" aria-label="Next slide">
                                                    NEXT</div>
                                            </div>
                                        </div>
                                        <div class="txt_box">
                                            <h2 class="tit">
                                                <span class="desc1"><b>위드컴퍼니</b>는 다양한 데이터셋을 바탕으로</span>
                                                <span class="desc2">객체 인식 기술 <b>PANOPTIC SEGMENTATION</b>를 구현합니다.</span>
                                            </h2>
                                            <div class="btn_bottom" style="z-index: 100;">
                                                <button type="submit" class="b_type3" onclick="">Sign Up</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="swiper-slide slide2 swiper-slide-active"
                                style="width: 679px; transition-duration: 0ms; opacity: 1; transform: translate3d(-1358px, 0px, 0px);"
                                data-swiper-slide-index="1">
                                <div class="container">
                                    <div class="content">
                                        <div class="group_top">
                                            <div class="paging en">
                                                <span class="desc1">03</span>
                                                <span class="desc2">02</span>
                                            </div>
                                            <div class="next_box">
                                                <div class="prev" tabindex="0" role="button"
                                                    aria-label="Previous slide">PREV</div>
                                                <div class="next" tabindex="0" role="button" aria-label="Next slide">
                                                    NEXT</div>
                                            </div>
                                        </div>
                                        <div class="txt_box">
                                            <h2 class="tit">
                                                <span class="desc1">우리는 <b>새로운 것을</b></span>
                                                <span class="desc2">시도하고 <b>변화할 것</b> 입니다.</span>
                                            </h2>
                                            <div class="btn_bottom" style="z-index: 100;">
                                                <button type="submit" class="b_type3" onclick="">Sign Up</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide slide3 swiper-slide-next"
                                style="width: 679px; transition-duration: 0ms; opacity: 0; transform: translate3d(-2037px, 0px, 0px);"
                                data-swiper-slide-index="2">
                                <div class="container">
                                    <div class="content">
                                        <div class="group_top">
                                            <div class="paging en">
                                                <span class="desc1">03</span>
                                                <span class="desc2">03</span>
                                            </div>
                                            <div class="next_box">
                                                <div class="prev" tabindex="0" role="button"
                                                    aria-label="Previous slide">PREV</div>
                                                <div class="next" tabindex="0" role="button" aria-label="Next slide">
                                                    NEXT</div>
                                            </div>
                                        </div>
                                        <div class="txt_box">
                                            <h2 class="tit">
                                                <span class="desc1">우리는 <b>수준 높은</b></span>
                                                <span class="desc2"><b>결과물</b>을 만듭니다.</span>
                                            </h2>
                                            <div class="btn_bottom" style="z-index: 100;">
                                                <button type="submit" class="b_type3" onclick="">Sign Up</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide slide1 swiper-slide-duplicate swiper-slide-duplicate-prev"
                                style="width: 679px; transition-duration: 0ms; opacity: 0; transform: translate3d(-2716px, 0px, 0px);"
                                data-swiper-slide-index="0">
                                <div class="container">
                                    <div class="content">
                                        <div class="group_top">
                                            <div class="paging en">
                                                <span class="desc1">03</span>
                                                <span class="desc2">01</span>
                                            </div>
                                            <div class="next_box">
                                                <div class="prev" tabindex="0" role="button"
                                                    aria-label="Previous slide">PREV</div>
                                                <div class="next" tabindex="0" role="button" aria-label="Next slide">
                                                    NEXT</div>
                                            </div>
                                        </div>
                                        <div class="txt_box">
                                            <h2 class="tit">
                                               <span class="desc1"><b>위드컴퍼니</b>는 다양한 데이터셋을 바탕으로</span>
                                                <span class="desc2">객체 인식 기술 <b>PANOPTIC SEGMENTATION</b>를 구현합니다.</span>
                                            </h2>
                                            <p class="en">WEB · UX/UI · MOBILE · GRAPHIC</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                    </div>
                    <script>
                        var swiper = new Swiper(".sec1_swiper", {
                            loop: true,
                            loopedSlides: 1,
                            slidesPerView: 1,
                            effect: "fade",
                            autoplay: {
                                delay: 5500,
                                disableOnInteraction: false,
                            },
                            navigation: {
                                nextEl: ".sec1_swiper .next",
                                prevEl: ".sec1_swiper .prev",
                            },
                            breakpoints: {
                                1024: {}
                            },
                        });
                    </script>
                </section>
                
                <!-- developer -->
                <section class="swiper-slide sec2 swiper-slide-next" style="height: 881px; margin-bottom: 30px;">
                    <div class="container">
                        <div class="tit_group">
                            <div class="tit">
                                <h2 class="h_type1 en"><span>Developer</span></h2>
                                   <p>객체 분할으로만 끝나지 않고 프로그램 소스, 데이터베이스 관리부터 객체 라벨링까지 책임지고 해드립니다.
                                            AI 기술은 구현보다 관리가 더 중요합니다.
                                   </p>
                            </div>
                        </div>
                        <div class="content" style="positive:relative;">
                            <div class="swiper sec2_swiper swiper-container-initialized swiper-container-horizontal">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide item swiper-slide-active"
                                        style="width: 427.5px; margin-right: 30px;" data-swiper-slide-index="0">
                                        <div class="title1">
                                        <h3>Image Test</h3>
                                        </div>
                                        <div class="text1" style="text-align:center;display: flex;justify-content: center;align-items: center;">
                                        <p>당신이 가진 이미지로 객체 인식 기술을 체험해보세요</p>
<!--                                    <p>전 직원이 의사결정에 자발적으로 참여하게 유도함으로써 개개인의 창의력을 최대한 발휘하게 하고 있습니다..</p> -->
                                        
                                    	</div>
                                    </div>
                                    <div class="swiper-slide item swiper-slide-next"
                                        style="width: 427.5px; margin-right: 30px;" data-swiper-slide-index="1">
                                        <div class="title2">
                                            <h3>Panoptic</h3>
                                            </div>
                                        <div class="text2">
                                        <p>저희가 사용한 기술에 대해 자세히 알아보세요.
                                        객체 인식 분할 방식 중 가장 최신 기술인 Panoptic Segmentation</p>
                                       <!--  <p>자율성을 바탕으로 직원 개개인의 업무에 책임을 부여함으로써 직원들의 성취감과 회사의 효율성을 동시에 추구하고 고객
                                            위주의 서비스로 고객의
                                            입장에서 생각하고 실천하는 회사입니다.</p> -->
                                  
                                    	</div>
                                    </div>
                                    <div class="swiper-slide item swiper-slide-duplicate-prev"
                                        style="width: 427.5px; margin-right: 30px;" data-swiper-slide-index="2">
                                        <div class="title3">
                                            <h3>시연 영상</h3>
                                            </div>
                                            <div class="text3">
                                        <p>실시간으로 받아오는 영상을 분석하고 있습니다. 실시간 분석 영상 화면을 시청해보세요.</p>
             
                                    </div>
                                </div>
                                 <div style="position:absolute; top:-10%; background-color: rgba(27, 28, 28, 0.9); height:110%; width:110%; text-align:center">
                                    <p style="color:var(--color-fff);position: absolute;left: 50%; top: 50%; transform: translate(-50%, -50%);font-size:xx-large;font-weight:bolder; align:center;">
                                     로그인 후 이용가능합니다.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- Use Case -->
                <section class="swiper-slide sec3" style="height: 881px; margin-bottom: 30px;">
                    <div class="container">
                        <div class="tit_group">
                            <div class="tit">
                                <h2 class="h_type1 en"><span>Case Study</span></h2>
                                <p>
                                    Who With Service API 에 포함될 분야를 소개합니다
                                </p>
                            </div>
                            <div class="next_box">
                                <div class="swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide">
                                    <i class="xi-angle-left"></i>
                                </div>
                                <div class="swiper-button-next" tabindex="0" role="button" aria-label="Next slide"><i
                                        class="xi-angle-right"></i></div>
                            </div>
                        </div>
                        <div class="content">
                            <div class="swiper sec3_swiper swiper-container-initialized swiper-container-horizontal">
                                <div class="swiper-wrapper"
                                    style="transform: translate3d(-2516px, 0px, 0px); transition-duration: 0ms;">
                                    <div class="swiper-slide swiper-slide-duplicate-active"
                                        style="width: 389.333px; margin-right: 30px;" data-swiper-slide-index="0">
                                        <div class="img_box">
                                            <img src="./resources/images/farm.png">
                                        </div>
                                        <div class="txt_box">
                                            <h3>농업 데이터 학습</h3>
                                            <p>
                                                <span>#스마트농업</span>
                                                <span>#고급스러움</span>
                                                <span>#반응형</span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide swiper-slide-duplicate-next"
                                        style="width: 389.333px; margin-right: 30px;" data-swiper-slide-index="1">
                                        <div class="img_box"><img src="./resources/images/medical.png">
                                        </div>
                                        <div class="txt_box">
                                            <h3>의학전문 데이터 학습</h3>
                                            <p>
                                                <span>#질병보조진단</span>
                                                <span>#</span>
                                                <span>#반응형</span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide" style="width: 389.333px; margin-right: 30px;"
                                        data-swiper-slide-index="2">
                                        <div class="img_box"><img src="./resources/images/road.jpg">
                                        </div>
                                        <div class="txt_box">
                                            <h3>도로환경 데이터 학습</h3>
                                            <p>
                                                <span>#전문적인</span>
                                                <span>#Cityscape</span>
                                                <span>#자율주행시스템</span>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="swiper-slide swiper-slide-prev"
                                        style="width: 389.333px; margin-right: 30px;" data-swiper-slide-index="3">
                                        <div class="img_box"><img src="./resources/images/fire.png">
                                        </div>
                                        <div class="txt_box">
                                            <h3>화재 데이터 학습</h3>
                                            <p>
                                                <span>#산불</span>
                                                <span>#화재 골든타임</span>
                                                <span>#Faster R CNN</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                            </div>
                            <script>
                                var swiper = new Swiper(".sec3_swiper", {
                                    loop: true,
                                    loopedSlides: 4,
                                    slidesPerView: 2,
                                    spaceBetween: 60,
                                    autoplay: {
                                        delay: 5500,
                                        disableOnInteraction: false,
                                    },
                                    navigation: {
                                        nextEl: ".sec3 .swiper-button-next",
                                        prevEl: ".sec3 .swiper-button-prev",
                                    },
                                    breakpoints: {
                                        1440: {
                                            spaceBetween: 30,
                                            loopedSlides: 3,
                                            slidesPerView: 3,
                                        },
                                        1024: {
                                            spaceBetween: 30,
                                            loopedSlides: 2,
                                            slidesPerView: 2.5,
                                        },
                                        950: {
                                            spaceBetween: 30,
                                            loopedSlides: 2,
                                            slidesPerView: 1.5,
                                        },
                                        768: {
                                            spaceBetween: 30,
                                            loopedSlides: 2,
                                            slidesPerView: 2.5,
                                        },
                                        640: {
                                            spaceBetween: 30,
                                            loopedSlides: 2,
                                            slidesPerView: 1.5,
                                        },
                                        425: {
                                            spaceBetween: 30,
                                            loopedSlides: 2,
                                            slidesPerView: 1,
                                        },
                                    },
                                });
                            </script>
                        </div>
                    </div>
                </section>


                <!-- Contact -->
                <section class="swiper-slide sec4" style="height: 881px; margin-bottom: 30px;">
                    <div class="container">
                        <div class="info_group">
                            <h2 class="h_type1 en"><span>Contact</span></h2>
                            <ul>
                                <li><span class="desc1">ADDRESS</span><span class="desc2">위드컴퍼니</span></li>
                                <li><span class="desc1">E-MAIL</span><span class="desc2 en">weed@with.com</span></li>
                                <li><span class="desc1">TEL</span><span class="desc2 en">010-7771-1241</span></li>
                            </ul>
                        </div>

                        <div class="input_group">
                            <form id="frm" method="post" action="/requst-post-normal" target="ifrm"
                                novalidate="novalidate">
                                <input type="hidden" name="csrf_cossia_token" value="9e1df29c77b7a592462f8a7808050758"
                                    autocomplete="off">
                                <input name="table" type="hidden" value="contact" autocomplete="off">
                                <div class="group" style="position:realative;">
                                    <div class="tit">
                                        <h3>의뢰 신청서</h3>
                                        <p>신청하시면 담당자가 전화드립니다.</p>
                                    </div>
                                        <ul>
                                        <p>문의유형*</p>
                                        <li>
                                            <label>
                                                <input name="category" type="radio" value="A"><span>기술 개발</span>
                                                <input name="category" type="radio" value="B"><span>맞춤 서비스
                                                </span>
                                            </label>
                                        </li>
                                        <p>의뢰자 정보*</p>
                                        <li data="E-mail"><input name="email" type="email" class="email"
                                                placeholder="이메일" autocomplete="off"></li>
                                        <li data="Company"><input name="name" type="text" placeholder="업체명"
                                                autocomplete="off"></li>
                                        <li data="Name"><input name="manager" type="text" placeholder="담당자"
                                                autocomplete="off"></li>
                                        <li data="Contact Information"><input name="phone" class="phone" type="text"
                                                placeholder="하이픈(-) 자동입력" autocomplete="off" maxlength="13"></li>
                                        <li data="content"><textarea name="content" cols="30" rows="10"
                                                placeholder="프로젝트 내용"></textarea></li>
                                    </ul>
                                <div class="btn_bottom">
                                    <button type="submit" class="b_type3" onclick="">Sign Up</button>
                                </div>
                                <div style="position:absolute;top:23%; background-color: rgba(27, 28, 28, 0.5); height:55%; width:34%;text-align:center;">
                                    <p style="color:var(--color-fff); position: absolute; left: 50%; top: 50%;
                                    transform: translate(-50%, -50%);font-size:xx-large; font-weight:bolder; align:center;"> 
                                     로그인 후 이용가능합니다.</p>
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>
                </section>
            </div>
            <div class="swiper-pagination main_pagination swiper-pagination-clickable swiper-pagination-bullets"><span
                    class="swiper-pagination-bullet swiper-pagination-bullet-active" tabindex="0" role="button"
                    aria-label="Go to slide 1"></span><span class="swiper-pagination-bullet" tabindex="0" role="button"
                    aria-label="Go to slide 2"></span><span class="swiper-pagination-bullet" tabindex="0" role="button"
                    aria-label="Go to slide 3"></span><span class="swiper-pagination-bullet" tabindex="0" role="button"
                    aria-label="Go to slide 4"></span></div>
            <p class="copy"><i class="xi-copyright"></i><span class="en">WD</span></p>
            <div class="mode_change" style="z-index: 100;"><span></span></div>
            <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
        </div>

<!-- 로그인 모달 -->
     <div class="modal_user">
            <div class="bg"></div>
            <div class="container">
                <i class="xi-close-thin"></i>`
                <div class="content_info">
                    <h2>Sign In</h2>
                    <div class="input_group">
                        <form method="post" action="Login.do">
                            <input name="table" type="hidden" value="contact" autocomplete="off">
                            <div class="group">
                                <ul>
                                    <li data="E-mail"><input name="email" type="email" class="email" placeholder="이메일"
                                            autocomplete="off"></li>
                                    <li data="password"><input name="password" type="password" placeholder="password"
                                            autocomplete="off"></li>
                                </ul>
                            </div>

                            <div class="btn_bottom">
                                <input type="submit" class="b_type4" value="로그인">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>  -->

        <!-- 회원가입 모달 -->
        <div class="modal_user_plus">
            <div class="bg"></div>
            <div class="container">
                <i class="xi-close-thin"></i>`
                <div class="content_info">
                    <h2>Sign Up</h2>
                    <div class="input_group">
                        <form method="post" action="Join.do">
                            <input name="table" type="hidden" value="contact" autocomplete="off">
                            <div class="group">
                                <ul>
                                    <li data="E-mail"><input name="email" type="email" class="email" placeholder="이메일"
                                            autocomplete="off"></li>
                                    <li data="Company"><input name="company" type="text" placeholder="업체명"
                                            autocomplete="off"></li>
                                    <li data="password"><input name="password" type="password" placeholder="password"
                                            autocomplete="off"></li>
                                </ul>
                            </div>

                            <div class="btn_bottom">
                                <input type="submit" class="b_type1" value="회원가입">
                              	<button type="button" class="b_type4">로그인</button>
                                <button type="button" class="b_type5">관리자</button> 
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
<!-- 관리자 모달 -->
        <div class="modal_manager">
            <div class="bg"></div>
            <div class="container">
                <i class="xi-close-thin"></i>`
                <div class="content_info">
                    <h2>Manager</h2>
                    <div class="input_group">
                         <form method="post" action="ManagerSelect.do">
                            <input name="table" type="hidden" value="contact" autocomplete="off">
                            <div class="group">
                                <ul>
                                    <li data="인증키"><input name="managerkey" type="password" placeholder="관리자 인증키"
                                            autocomplete="off">
                                </ul>
                            </div>

                            <div class="btn_bottom">
                                <input type="submit" class="b_type5" value="관리자모드">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        </div>


        <!-- 홈 -->
        <!-- 홈버튼 누르면 처음 페이지 -->


        <script>
            $(document).ready(function () {
                $('.main_wrap .mode_change').click(function () {
                    $(this).toggleClass('on')
                    if ($(".main_wrap .mode_change").hasClass("on")) {
                        $(".main_wrap").addClass("white")
                    } else {
                        $(".main_wrap").removeClass("white")
                    }
                });        
                
             // modal_user_plus는 회원가입
                $('.main_wrap .b_type3').click(function () {
                    $('.modal_user_plus').addClass("on")
                });

                $('.modal_user_plus .container .xi-close-thin').click(function () {
                    $('.modal_user_plus').removeClass('on')
                });

                $('.modal_user_plus .bg').click(function () {
                    $('.modal_user_plus').removeClass('on')
                });
                
                // modal_user는 로그인
                $('.modal_user_plus .b_type4').click(function () {
                    $('.modal_user').addClass('on')
                });

                $('.modal_user_plus .b_type4').click(function () {
                    $('.modal_user_plus').removeClass('on')
                });

                $('.modal_user .container .xi-close-thin').click(function () {
                    $('.modal_user').removeClass('on')
                });

                $('.modal_user .bg').click(function () {
                    $('.modal_user').removeClass('on')
                });
                
             // modal_manager는 관리자
                $('.modal_user_plus .b_type5').click(function () {
                    $('.modal_manager').addClass('on')
                });
                
                $('.modal_user_plus .b_type5').click(function () {
                    $('.modal_user_plus').removeClass('on')
                });

                $('.modal_manager .container .xi-close-thin').click(function () {
                    $('.modal_manager').removeClass('on')
                });

                $('.modal_manager .bg').click(function () {
                    $('.modal_manager').removeClass('on')
                });
                
            });



            /* 2023-01-13 Cossia */
            /* main page slide S */
            const main_page = new Swiper(".main_swiper", {
                direction: "vertical",
                slidesPerView: 1,
                spaceBetween: 30,
                mousewheel: true,
                speed: 800,
                pagination: {
                    el: ".main_pagination,.main_nav",
                    clickable: true,
                },
                breakpoints: {
                    1024: {}
                },
                on: {
                    slideChange: function () {
                        $('.gnb li').removeClass('on');
                        $('.gnb li').eq(this.realIndex).addClass('on');
                    }
                }
            });
            /* main menu click */
            $(document).on('click', '.gnb li', function () {
                main_page.slideTo($('.gnb li').index(this));
            });

            $('#frm').validate({
                rules: {
                    name: { required: true, },
                    manager: { required: true, },
                    phone: { required: true, },
                    email: { required: true, email: true },
                    content: { required: true, },
                }
            })
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
                    <img src="./resources/images/foot-logo.png">
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