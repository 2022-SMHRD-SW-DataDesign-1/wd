<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="./resources/images/favicon.png">
    <title>WD Manager</title>
    <meta name="X-CSRF-TOKEN" content="9e1df29c77b7a592462f8a7808050758">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--css-->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css">
    <link rel="stylesheet" href="resources/css/jquery.fullpage.css">
    <link rel="stylesheet" href="resources/css/jquery.ui.min.css">
    <link rel="stylesheet" href="//pro.fontawesome.com/releases/v5.10.0/css/all.css">
    <link rel="stylesheet" href="resources/plugins/sweetalert2/sweetalert2.min.css" type="text/css">
    <link rel="stylesheet" href="resources/plugins/ckeditor/plugins/codesnippet/lib/highlight/styles/monokai_sublime.css">
    <link rel="stylesheet" href="resources/css/bootstrap-dialog.css" type="text/css">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
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

        /* 주히 추가 case 문의 버튼 위치 수정 */
        .b_type2 {
                    margin: auto;
                    padding: 10px 20px;
                    background: var(- -color-03f);
                    color: var(- -color-fff);
                    text-align: center;
                    border-radius: 100px;
                    min-width: 120px;
                    transition: all .3s ease;
                    display: inline-block;
                    font-size: 18px;
                }

                .b_type1 {
                    margin: auto;
                    padding: 10px 20px;
                    background: var(- -color-03f);
                    color: var(- -color-fff);
                    text-align: center;
                    border-radius: 100px;
                    min-width: 120px;
                    transition: all .3s ease;
                    display: inline-block;
                    margin-right: 5%;
                    font-size: 18px;
                }

                .b_type2 {
                    margin: auto;
                    padding: 10px 20px;
                    background: var(- -color-03f);
                    color: var(- -color-fff);
                    text-align: center;
                    border-radius: 100px;
                    min-width: 120px;
                    transition: all .3s ease;
                    display: inline-block;
                    margin-right: 5%;
                    font-size: 18px;
                }

                .b_type3 {
                    margin: auto;
                    padding: 10px 20px;
                    background: var(- -color-03f);
                    color: var(- -color-fff);
                    text-align: center;
                    border-radius: 100px;
                    min-width: 120px;
                    transition: all .3s ease;
                    display: block;
                    font-size: 18px;
                    
                }

                .b_type4 {
                    margin: auto;
                    padding: 10px 20px;
                    background: var(- -color-03f);
                    color: var(- -color-fff);
                    text-align: center;
                    border-radius: 100px;
                    min-width: 120px;
                    transition: all .3s ease;
                    display: block;
                    font-size: 18px;
                }

                .b_type1:hover,
                .b_type2:hover,
                .b_type3:hover,
                .b_type4:hover {
                    color: #fff;
                    box-shadow: var(- -box-shadow-S-03f);
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

        .main_wrap .fix_menu {
            position: absolute;
            z-index: 1000000;
            width: 60px;
            height: 60px;
            right: 40px;
            bottom: 40px;
        }

        .main_wrap .fix_menu>i {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            width: 60px;
            height: 60px;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 1px solid var(--color-fff);
            color: var(--color-fff);
            border-radius: 50%;
            font-size: 24px;
            cursor: pointer;
            opacity: 0;
            visibility: hidden;
        }

        .main_wrap .fix_menu ul {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            content: '';
            width: 100%;
            height: 100%;
        }

        .main_wrap .fix_menu ul li {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 1px solid var(--color-dcdcde);
            border-radius: 50%;
            transition: all .3s ease;
            cursor: pointer;
            visibility: hidden;
            opacity: 0;
        }

        .main_wrap .fix_menu ul li:last-child {
            visibility: inherit;
            opacity: 1;
        }

        .main_wrap .fix_menu ul li i {
            font-size: 24px;
            color: var(--color-dcdcde);
            transition: all .3s ease;
        }

        .main_wrap .fix_menu ul li:hover {
            background: var(--color-fff);
        }

        .main_wrap .fix_menu ul li:hover i {
            color: var(--color-1a1e23);
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

        @media(max-width:768px) {

            .main_wrap .fix_menu ul li:last-child {
                display: none;
            }

            .main_wrap .fix_menu.on ul li {
                border: 1px solid var(--color-fff);
                opacity: 1;
                visibility: inherit;
            }

            .main_wrap .fix_menu>i {
                opacity: 1;
                visibility: inherit;
                transition: all .3s ease;
            }

            .main_wrap .fix_menu.on>i {
                background: var(--color-fff);
                color: var(--color-1a1e23);
                transform: translate(-50%, -50%) rotate(45deg);
            }

            .main_wrap .fix_menu.on ul li:nth-child(1) {
                top: -10px;
                transform: translate(-50%, -100%);
            }

            .main_wrap .fix_menu.on ul li:nth-child(2) {
                top: -20px;
                transform: translate(-50%, -200%);
            }

            .main_wrap .fix_menu.on ul li:nth-child(3) {
                top: -30px;
                transform: translate(-50%, -300%);
                display: none;
            }

        }

        @media(max-width:540px) {
            .main_wrap .fix_menu {
                right: 20px;
                bottom: 20px;
            }

            .main_wrap .copy {
                left: 20px;
                font-size: 14px;
                bottom: 20px;
            }
        }

        .main_wrap .side_menu {
            width: 100px;
            margin-right: 40px;
            border: 4px solid var(--color-000);
            border-radius: 30px;
            box-shadow: var(--box-shadow-L);
            position: relative;
            background: var(--color-1a1e23);
        }

        .main_wrap .side_menu>i {
            position: absolute;
            left: 50%;
            top: 40px;
            transform: translate(-50%, 0);
            content: '';
            width: 24px;
            height: 24px;
            border: 1px solid red;
        }

        .main_wrap .side_menu .container {
            width: 100%;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .main_wrap .side_menu ul {
            display: flex;
            flex-direction: column;
            gap: 30px 0;
        }

        .main_wrap .side_menu ul li {
            position: relative;
        }

        .main_wrap .side_menu ul li::before {
            position: absolute;
            left: calc(100% + 0px);
            top: 50%;
            transform: translateY(-50%);
            content: attr(data);
            width: 100px;
            background: var(--color-03f);
            color: var(--color-dcdcde);
            padding: 7px 10px;
            border-radius: 100px;
            z-index: 1000000;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 12px;
            box-shadow: var(--box-shadow-S);
            opacity: 0;
            visibility: hidden;
            transition: all .3s ease;
        }

        .main_wrap .side_menu ul li::after {
            position: absolute;
            left: calc(100% + 0px);
            top: 50%;
            transform: translate(-50%, -50%) rotate(45deg);
            width: 7px;
            height: 7px;
            background: var(--color-03f);
            content: '';
            z-index: 1000000;
            opacity: 0;
            visibility: hidden;
            transition: all .3s ease;
        }

        .main_wrap .side_menu ul li:hover::before,
        .main_wrap .side_menu ul li:hover::after {
            left: calc(100% + 20px);
            visibility: inherit;
            opacity: 1;
        }

        .main_wrap .side_menu ul li i {
            font-size: 24px;
            color: var(--color-fff);
            opacity: .25;
            cursor: pointer;
            transition: all .3s ease;
        }

        .main_wrap .side_menu ul li:hover i {
            opacity: 1;
        }

        .main_wrap .side_menu .mode_change {
            position: absolute;
            left: 50%;
            bottom: 30px;
            transform: translate(-50%, 0);
            width: 25px;
            height: 7px;
            border-radius: 100px;
            background: var(--color-dcdcde);
            cursor: pointer;
        }

        .main_wrap .side_menu .mode_change span {
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

        .main_wrap .side_menu .mode_change.on span {
            left: calc(100% + 3px);
            transform: translate(-100%, -50%);
        }

        .modal_logout, .modal_clear {
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

        .modal_logout.on,
        .modal_clear.on {
            visibility: inherit;
            opacity: 1;
        }

        .modal_logout .bg,
        .modal_clear .background
         {
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
        
        .modal_logout .container,
        .modal_clear .con {
            display: flex;
            background: var(--color-1a1e23);
            border: 4px solid var(--color-000);
            border-radius: 30px;
            padding: 60px;
            z-index: 1;
            box-shadow: var(--box-shadow-M);
            align-items: center;
            position: relative;
            max-width: 1200px;
            width: 100%;
            margin: 0 auto;
            transition: all .3s ease;
            transform: translateY(-100%);
        }

        .modal_logout.on .container,
        .modal_clear.on .con {
            transform: translateY(0);
        }

        .modal_logout .container .xi-close-thin,
        .modal_clear .con .xi-close-thin {
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

        .modal_logout .container .xi-close-thin::before,
        .modal_clear .con .xi-close-thin::before {
            transition: all .3s ease;
        }

        .modal_logout .container .xi-close-thin:hover::before,
        .modal_clear .con .xi-close-thin:hover::before {
            transform: rotate(180deg);
        }

        .modal_logout .content_info,
        .modal_clear .content_info {
            display: flex;
            flex-direction: column;
            margin: 0 auto;
        }

        .modal_logout .content_info h2,
        .modal_clear .content_info h2 {
            color: var(--color-fff);
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 30px;
        }

        .modal_logout .content_info ul,
        .modal_clear .content_info ul {
            display: flex;
            flex-direction: column;
            gap: 15px 0;
        }

        .modal_logout .content_info ul li,
        .modal_clear .content_info ul li {
            font-size: 18px;
            color: var(--color-fff);
            display: flex;
            gap: 15px;
        }

        .modal_logout .content_info ul li .desc1,
        .modal_clear .content_info ul li .desc1 {
            font-weight: 400;
            width: 50px;
            position: relative;
            z-index: 1;
            text-align: center;
            font-size: 14px;
        }

        .modal_logout .content_info ul li .desc1::after,
        .modal_clear .content_info ul li .desc1::after {
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

        .modal_logout .content_info ul li .desc2,
        .modal_clear .content_info ul li .desc2 {
            width: calc(100% - 65px);
            font-weight: 400;
            opacity: .5;
            word-break: keep-all;
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
            background: url(.resources/images/sec4_bg.jpg) no-repeat center / cover;
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
            background: url(.resources/images/big_img1_blur.png) no-repeat center / 100% 100%;
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
            width: 50%;
            display: flex;
            flex-direction: column;
            gap: 15px 0;
        }

        .sec4 .input_group .group {
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

        .sec4 .input_group ul {
            display: flex;
            flex-direction: column;
            gap: 15px 0;
        }

        .sec4 .input_group ul li {
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
        .sec4 .input_group ul li textarea {
            background: none;
            width: 100%;
            border-radius: 5px;
            border: 1px solid var(--color-a7a7a7);
            padding: 15px;
            color: var(--color-fff);
            outline: var(--color-fff);
        }

        .sec4 .input_group ul li input {
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

        /*  추가 */
        .list th {
            text-align: center;
            color: #a7a7a7;
        }

        .list tr {
            border-bottom: 1px solid #a7a7a7;
            height: 40px;
            text-align: center;
        }

        .notice th {
            text-align: center;
            color: #a7a7a7;
        }

        .notice tr {
            height: 40px;
            text-align: center;
        }

        .notice td {
            padding: 3%;
            text-align: left;
        }

        .btn_bottom {
            text-align: center;
            height: 100%;
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
    <style>
        .cke {
            visibility: hidden;
        }
    </style>
    <script src="/js/jquery.fullPage.js?20230117122237"></script>
    <script src="/js/common.js?20230117122237"></script>
    <script src="/js/front-board.js?20230117122237"></script>
    <script src="/js/default.js?20230117122237"></script>
    <script src="/js/front.js?20230117122237"></script>
    <link rel="shortcut icon" href="/resources/images/favicon.png">
    <link rel="icon" href="/resources/images/favicon.png">
</head>

<body>

   <div class="main_wrap">
        <div class="swiper main_swiper swiper-container-initialized swiper-container-vertical">
            <div class="main_header">
                <a href="" class="logo">
                    <div class="img"><img src="./resources/images/weed_log2.jpg"></div>
                    <span class="en"> <b>WHO WITH SERVICE</b></span>
                </a>
                <ul class="gnb">
                    <div class="btn_bottom" id="btn-z" style="margin-top: -10px; z-index: 10">
						<button type="submit" class="b_type3" onclick="">Logout</button>
					</div>
                </ul>
            </div>

            <!-- 추가 -->
            <section class="swiper-slide sec4" style="height: 881px; margin-bottom: 30px;">
                <div class="container">
                    <div class="input_group" style="height:70%;">
                        <div class="group">
                            <div class="tit" style="gap: 30px 0;">
                                <h3 style="color: rgb(217, 217, 217);">의뢰 목록</h3>
                                <table class="list"
                                    style="border-collapse: collapse; width : 100%; table-layout: fixed; color:#a7a7a7;">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>문의유형</th>
                                            <th>업체명</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                         <c:forEach var="contact" items="${list}" varStatus="status">
												<tr>
													<td><button onclick="getContent(${contact.req_seq})" style="background-color:transparent;">${status.count}</td>
													<td><button onclick="getContent(${contact.req_seq})" style="background-color:transparent;">${contact.req_type}</td>
													<td><button onclick="getContent(${contact.req_seq})" style="background-color:transparent;">${contact.company}</td>
												</tr>
											</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <!-- 목록 세부내용 -->
                    <c:forEach var="contact" items="${list}" varStatus="status">
                    <div class="input_group content${contact.req_seq}" style="height:70%; display:none;">
                        <form id="frm" method="post" action="/requst-post-normal" target="ifrm" novalidate="novalidate">
                            <input name="table" type="hidden" value="contact" autocomplete="off">
                            <div class="group">
                                <div class="tit">
                                    <h3 style="color: rgb(217, 217, 217)">의뢰 신청서</h3>
                                </div>
                                <table class="notice"
                                    style="border-collapse: collapse; width : 100%; table-layout: fixed; color:#a7a7a7;">

                                    <tr>
                                        <td>문의유형</td>
                                        <td>${contact.req_type}</td>
                                    </tr>

                                    <tr>
                                        <td>
                                            E-mail
                                        </td>
                                        <td>
                                            ${contact.email}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            업체명
                                        </td>
                                        <td>
                                            ${contact.company}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            담당자
                                        </td>
                                        <td>
                                            ${contact.name}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            전화번호
                                        </td>
                                        <td>
                                            ${contact.phone}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            프로젝트내용
                                        </td>
                                        <td>
                                            ${contact.req_content}
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </form>
                        <div class="btn_bottom">
                            <button type="submit" class="b_type4"  >삭제하기</button>
                        </div>
                    </div>
                    </c:forEach>
                    
                         <div class="modal_clear">
							<div class="background"></div>
								<div class="con">
									<i class="xi-close-thin"></i>`
									<div class="content_info">
										<h2>삭제 하시겠습니까?</h2>
										<ul>
											<div class="btn_bottom">
												<button class="b_type2" onclick="deleteContent(${contact.req_seq}); location.href='Manager.do'">네</button>
												<button class="b_type1" onclick="location.href=''">아니오</button>
											</div>
										</ul>
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
								<button type="submit" class="b_type2"
									onclick="location.href='logout.do'">네</button>
								<button type="submit" class="b_type1" onclick="location.href=''">아니오</button>
							</div>
							
						</ul>
					</div>
				</div>
			</div>

            <script>
            let choiceCout =0;
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
                    
                    
                 // modal_clear는 삭제
                    $('.input_group .b_type4').click(function () {
                        $('.modal_clear').addClass('on');
                        $('#btn-z').css('z-index',0);
                    });

                    $('.modal_clear .con .xi-close-thin').click(function () {
                        $('.modal_clear').removeClass('on')
                    });

                    $('.modal_clear .background').click(function () {
                        $('.modal_clear').removeClass('on')
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
           
                // 상세 의뢰서 작성
                function getContent(req_seq) {
					//데이터 확인버튼 클릭 => 바로 아래 쪽에 있는 tr 태그를 보이게 할 것
					// 다시 한번 더 버튼 클릭시 tr태그 안보이게 할 것 
					choiceCout = req_seq;
					if($('.content'+req_seq).css('display')=='none'){
						$('.content'+req_seq).show();
						$.ajax({
							url: 'detailGetAsync.do', //요청 경로
							data: {req_seq:req_seq} , //요청 데이터
							type : 'get', //값을 불러올때는 get방식
							success: function(res) { //요청, 응답이 성공했을 때 실행하는 함수
								console.log(res);
								//td 에 내용 넣어주고 tr에 추가
								let content = '<td>내용 : '+res.content+'</td>'
								//js => .innerHtml / innerText
								//j쿼리 => .html/ text
								$('.content'+req_seq).html(content);
							},
							error: function () { //요청,응답이 실패했을때 실행
								console.log('fail');
							}
						});
					}else{
						$('.content'+req_seq).hide();
					}
				}
                
                // 의뢰서 삭제
                 function deleteContent(req_seq) {
					//boardDeleteAsync.do 요청
					// 요청 데이터 : 게시물 번호
					// get 요청
					
						console.log(choiceCout);
						$.ajax({
						url: 'DeleteAsync.do', //요청 경로
						data: {req_seq:choiceCout} ,
						type : 'get', 
						success: function(res) { //요청, 응답이 성공했을 때 실행하는 함수
							console.log(res);
							//새로고침
							// location.reload();
						},
						error: function () { //요청,응답이 실패했을때 실행
							console.log('fail');
						}
					});
					//성공 - 삭제성공 -> 새로고침
					
				} 
            </script>



</body>

</html>

