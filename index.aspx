<%@ Page Language="VB" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Sample._Default" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Dolphin's IT Services - Custom Software Solutions</title>
    <link rel="icon" href="public/assets/dolphin.ico" type="image/x-icon" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="software development, school management system, waterwork information system, event management, school ID system, IT services, custom software solutions" name="keywords">
    <meta content="Dolphin's IT Services provides custom software solutions including School Management Systems, Waterwork Information Systems, Event Management Systems, and School ID Systems for educational institutions and organizations." name="description">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@100..900&family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link rel="stylesheet" href="public/lib/animate/animate.min.css" />
    <link href="public/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link href="public/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="public/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="public/css/style.css" rel="stylesheet">
    <link href="public/css/custom.css" rel="stylesheet">


    <style>
        .header-carousel .owl-nav .owl-prev,
        .header-carousel .owl-nav .owl-next {
            display: none !important;
            background: #0058e7 !important;
        }

        .clients-section {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            position: relative;
            overflow: hidden;
            width: 100vw;
            margin-left: calc(-50vw + 50%);
        }

        /* Clients Carousel - FULL WIDTH WITH SIMPLE TEXT BORDERS */
        .clients-carousel-wrapper {
            background: rgba(255, 255, 255, 0.9);
            backdrop-filter: blur(10px);
            border-radius: 0;
            padding: 60px 0;
            margin: 40px 0;
            box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
            border: none;
            width: 100vw;
            margin-left: calc(-50vw + 50%);
            position: relative;
            overflow: hidden;
        }

            /* Top Text Border */
            .clients-carousel-wrapper::before {
                content: 'Our Trusted Partners • Our Trusted Partners • Our Trusted Partners • Our Trusted Partners • Our Trusted Partners • Our Trusted Partners • Our Trusted Partners • Our Trusted Partners • Our Trusted Partners • Our Trusted Partners • ';
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                height: 30px;
                background: linear-gradient(90deg, #0058e7 0%, #2d7dd2 50%, #0058e7 100%);
                color: white;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: 1px;
                white-space: nowrap;
                display: flex;
                align-items: center;
                padding: 0 20px;
                z-index: 10;
                animation: textScrollLeft 25s linear infinite;
                text-transform: uppercase;
            }

            /* Bottom Text Border */
            .clients-carousel-wrapper::after {
                content: '• Trusted Partners • Trusted Partners • Trusted Partners • Trusted Partners • Trusted Partners • Trusted Partners • Trusted Partners • Trusted Partners • Trusted Partners • Trusted Partners • Trusted Partners';
                position: absolute;
                bottom: 0;
                left: 0;
                right: 0;
                height: 30px;
                background: linear-gradient(90deg, #28a745 0%, #20c997 50%, #28a745 100%);
                color: white;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: 1px;
                white-space: nowrap;
                display: flex;
                align-items: center;
                padding: 0 20px;
                z-index: 10;
                animation: textScrollRight 20s linear infinite;
                text-transform: uppercase;
            }

        @keyframes textScrollLeft {
            0% {
                transform: translateX(0);
            }

            100% {
                transform: translateX(-50%);
            }
        }

        @keyframes textScrollRight {
            0% {
                transform: translateX(-50%);
            }

            100% {
                transform: translateX(0);
            }
        }

        /* Alternative simpler static version */
        .clients-carousel-wrapper.static-borders::before {
            content: '• • • Our Trusted Partners • • • Our Trusted Partners • • • Our Trusted Partners • • • Our Trusted Partners • • • Our Trusted Partners • • •';
            animation: none;
            background: #0058e7;
            text-align: center;
            justify-content: center;
        }

        .clients-carousel-wrapper.static-borders::after {
            content: '• • • Trusted Partners • • • Trusted Partners • • • Trusted Partners • • • Trusted Partners • • • Trusted Partners • • • Trusted Partners • • •';
            animation: none;
            background: #28a745;
            text-align: center;
            justify-content: center;
        }

        /* Pause text animation on hover */
        .clients-carousel-wrapper:hover::before,
        .clients-carousel-wrapper:hover::after {
            animation-play-state: paused;
        }

        .clients-carousel {
            animation: scroll-left 8s linear infinite;
            white-space: nowrap;
            will-change: transform;
            display: flex;
            align-items: center;
        }

            .clients-carousel:hover {
                animation-play-state: paused;
            }

        @keyframes scroll-left {
            0% {
                transform: translateX(0);
            }

            100% {
                transform: translateX(-33.333%);
            }
        }

        .client-logo-item {
            display: inline-flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin: 0 60px;
            padding: 20px;
            transition: all 0.3s ease;
            border-radius: 15px;
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(5px);
            min-width: 200px;
            text-align: center;
            flex-shrink: 0;
            position: relative;
            z-index: 5;
            border: 2px solid transparent;
        }

            .client-logo-item:hover {
                transform: translateY(-10px) scale(1.05);
                background: rgba(255, 255, 255, 0.95);
                box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
                border-color: #0058e7;
            }

        .client-logo {
            max-width: 120px;
            max-height: 80px;
            width: auto;
            height: auto;
            object-fit: contain;
            filter: grayscale(100%) opacity(0.7);
            transition: all 0.3s ease;
            margin-bottom: 15px;
        }

        .client-logo-item:hover .client-logo {
            filter: grayscale(0%) opacity(1);
            transform: scale(1.1);
        }

        .client-name {
            font-size: 14px;
            font-weight: 600;
            color: #333;
            margin-top: 10px;
            opacity: 0.8;
            transition: all 0.3s ease;
        }

        .client-logo-item:hover .client-name {
            opacity: 1;
            color: #0058e7;
        }

        /* Client Stats */
        .client-stat {
            padding: 30px 20px;
            background: rgba(255, 255, 255, 0.8);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            transition: all 0.3s ease;
            height: 100%;
        }

            .client-stat:hover {
                transform: translateY(-5px);
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                background: rgba(255, 255, 255, 0.95);
            }

            .client-stat h3 {
                font-size: 2.5rem;
                font-weight: 700;
                background: linear-gradient(135deg, #0058e7, #28a745);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent;
                background-clip: text;
            }

            .client-stat p {
                color: #666;
                font-weight: 500;
            }

        /* Responsive Design */
        @media (max-width: 768px) {
            .clients-carousel-wrapper::before,
            .clients-carousel-wrapper::after {
                height: 25px;
                font-size: 10px;
                padding: 0 10px;
            }

            .clients-carousel-wrapper::before {
                content: 'Our Partners • Our Partners • Our Partners • Our Partners • Our Partners • Our Partners • Our Partners • Our Partners • ';
            }

            .clients-carousel-wrapper::after {
                content: '• Partners • Partners • Partners • Partners • Partners • Partners • Partners • Partners • Partners • Partners • ';
            }

            .client-logo-item {
                margin: 0 30px;
                min-width: 150px;
                padding: 15px;
            }

            .client-logo {
                max-width: 100px;
                max-height: 60px;
            }

            .client-name {
                font-size: 12px;
            }

            .clients-carousel {
                animation-duration: 6s;
            }

            .client-stat {
                padding: 20px 15px;
                margin-bottom: 20px;
            }

                .client-stat h3 {
                    font-size: 2rem;
                }
        }

        @media (max-width: 480px) {
            .clients-carousel-wrapper {
                padding: 50px 0;
                margin: 20px 0;
            }

                .clients-carousel-wrapper::before,
                .clients-carousel-wrapper::after {
                    height: 20px;
                    font-size: 9px;
                    padding: 0 5px;
                }

                .clients-carousel-wrapper::before {
                    content: 'Partners • Partners • Partners • Partners • Partners • Partners • Partners • ';
                }

                .clients-carousel-wrapper::after {
                    content: '• Partners • Partners • Partners • Partners • Partners • Partners • Partners • ';
                }

            .client-logo-item {
                margin: 0 20px;
                min-width: 120px;
            }

            .client-logo {
                max-width: 80px;
                max-height: 50px;
            }

            .clients-carousel {
                animation-duration: 4s;
            }
        }

        /* Optional: If you want even simpler static borders without animation */
        .simple-static-borders::before {
            content: '• • • OUR TRUSTED PARTNERS • • • OUR TRUSTED PARTNERS • • • OUR TRUSTED PARTNERS • • •';
            animation: none !important;
            background: #0058e7 !important;
            text-align: center !important;
            justify-content: center !important;
        }

        .simple-static-borders::after {
            content: '• • • TRUSTED PARTNERS • • • TRUSTED PARTNERS • • • TRUSTED PARTNERS • • • TRUSTED PARTNERS • • •';
            animation: none !important;
            background: #28a745 !important;
            text-align: center !important;
            justify-content: center !important;
        }


        /* Responsive Navigation Styling */
        .team-carousel .owl-nav {
            margin-top: 30px;
            display: flex;
            justify-content: center;
        }

            .team-carousel .owl-nav .owl-prev,
            .team-carousel .owl-nav .owl-next {
                margin: 0 12px;
                width: 45px;
                height: 45px;
                display: flex;
                align-items: center;
                justify-content: center;
                color: #0058e7;
                background: rgba(0, 88, 231, 0.1);
                border: 1px solid rgba(0, 88, 231, 0.2);
                border-radius: 45px;
                font-size: 20px;
                transition: 0.5s;
            }

                .team-carousel .owl-nav .owl-prev:hover,
                .team-carousel .owl-nav .owl-next:hover {
                    background: #0058e7;
                    color: white;
                    border-color: #0058e7;
                }

        /* Hide navigation on large screens when not needed */
        @media (min-width: 1200px) {
            .team-carousel .owl-nav {
                display: none !important;
            }

            .team-carousel .owl-dots {
                display: none !important;
            }
        }

        /* Show navigation on smaller screens */
        @media (max-width: 1199px) {
            .team-carousel .owl-nav {
                display: flex !important;
            }
        }

        @media (max-width: 991px) {
            .team-carousel .owl-dots {
                display: flex !important;
            }
        }

        .team-carousel .owl-dots {
            margin-top: 25px;
            display: flex;
            align-items: flex-end;
            justify-content: center;
        }

        .team-carousel .owl-dot {
            position: relative;
            display: inline-block;
            margin: 0 5px;
            width: 15px;
            height: 15px;
            background: rgba(0, 88, 231, 0.2);
            border-radius: 15px;
            transition: 0.5s;
        }

            .team-carousel .owl-dot.active {
                width: 40px;
                background: #0058e7;
            }



        .event-slider {
            position: fixed;
            top: 0;
            right: -50%;
            width: 50%;
            height: 100vh;
            background: #ffffff;
            box-shadow: -5px 0 15px rgba(0,0,0,0.1);
            transition: right 0.4s ease-in-out;
            z-index: 9999;
            overflow-y: auto;
        }

            .event-slider.active {
                right: 0;
            }

        .slider-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100vh;
            background: rgba(0,0,0,0.5);
            opacity: 0;
            visibility: hidden;
            transition: all 0.4s ease-in-out;
            z-index: 9998;
        }

            .slider-overlay.active {
                opacity: 1;
                visibility: visible;
            }

        .slider-header {
            background: linear-gradient(135deg, #007bff 0%, #0056b3 100%);
            color: white;
            padding: 20px;
            position: sticky;
            top: 0;
            z-index: 10;
        }

        .slider-close {
            position: absolute;
            top: 15px;
            right: 20px;
            background: none;
            border: none;
            color: white;
            font-size: 24px;
            cursor: pointer;
            transition: transform 0.2s;
        }

            .slider-close:hover {
                transform: scale(1.1);
                color: #ffc107;
            }

        .slider-content {
            padding: 30px;
        }

        .event-card {
            background: #f8f9fa;
            border-radius: 15px;
            padding: 25px;
            margin-bottom: 25px;
            border-left: 5px solid #007bff;
            transition: transform 0.3s, box-shadow 0.3s;
        }

            .event-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 10px 25px rgba(0,123,255,0.15);
            }

        .event-icon {
            width: 60px;
            height: 60px;
            background: linear-gradient(135deg, #007bff, #0056b3);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 15px;
        }

        .workflow-section {
            background: #e3f2fd;
            border-radius: 15px;
            padding: 25px;
            margin: 25px 0;
        }

        .actor-card {
            background: white;
            border-radius: 10px;
            padding: 20px;
            margin: 15px 0;
            border: 2px solid #e9ecef;
            transition: border-color 0.3s;
        }

            .actor-card:hover {
                border-color: #007bff;
            }

        .feature-list {
            list-style: none;
            padding: 0;
        }

            .feature-list li {
                padding: 8px 0;
                border-bottom: 1px solid #e9ecef;
            }

                .feature-list li:last-child {
                    border-bottom: none;
                }

                .feature-list li i {
                    color: #007bff;
                    margin-right: 10px;
                }

        @media (max-width: 768px) {
            .event-slider {
                width: 90%;
                right: -90%;
            }
        }

        @media (max-width: 576px) {
            .event-slider {
                width: 100%;
                right: -100%;
            }

            .slider-content {
                padding: 20px;
            }
        }

        .owl-prev {
            display: none !important;
        }

        .owl-next {
            display: none !important;
        }

        .slider-title {
            color: white !important;
            margin: 0;
            font-size: 24px;
        }

            .slider-title i {
                color: white !important;
            }


        @media (max-width: 425px) {
            .slider-title {
                font-size: 20px !important;
            }
        }

        @media (max-width: 376px) {
            .slider-title {
                font-size: 15px !important;
            }
        }

        /* Modern About Section Styles */
        :root {
            --primary-color: #0058e7;
            --secondary-color: #0047b8;
            --accent-color: #1a6bff;
            --text-dark: #2c3e50;
            --text-light: #6c757d;
            --light-bg: rgba(0, 88, 231, 0.05);
            --border-color: rgba(0, 88, 231, 0.1);
        }

        .about {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            position: relative;
            overflow: hidden;
        }

            .about::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><defs><pattern id="grid" width="10" height="10" patternUnits="userSpaceOnUse"><path d="M 10 0 L 0 0 0 10" fill="none" stroke="%23e9ecef" stroke-width="0.5"/></pattern></defs><rect width="100" height="100" fill="url(%23grid)"/></svg>');
                opacity: 0.3;
                z-index: 1;
            }

            .about .container {
                position: relative;
                z-index: 2;
            }

            .about .section-title {
                color: var(--primary-color);
                font-weight: 600;
                font-size: 1.1rem;
                text-transform: uppercase;
                letter-spacing: 1px;
                margin-bottom: 1rem;
                position: relative;
            }

                .about .section-title::after {
                    content: '';
                    position: absolute;
                    bottom: -5px;
                    left: 0;
                    width: 50px;
                    height: 3px;
                    background: var(--primary-color);
                    border-radius: 2px;
                }

            .about .display-5 {
                color: var(--text-dark);
                font-weight: 700;
                line-height: 1.2;
                margin-bottom: 2rem;
            }

            .about .lead-text {
                color: var(--text-light);
                font-size: 1.1rem;
                line-height: 1.7;
                margin-bottom: 3rem;
            }

            .about .feature-card {
                background: white;
                border-radius: 15px;
                padding: 2rem;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
                transition: all 0.3s ease;
                border: 1px solid var(--border-color);
                height: 100%;
                position: relative;
                overflow: hidden;
            }

                .about .feature-card::before {
                    content: '';
                    position: absolute;
                    top: 0;
                    left: 0;
                    right: 0;
                    height: 4px;
                    background: var(--primary-color);
                    transform: scaleX(0);
                    transition: transform 0.3s ease;
                }

                .about .feature-card:hover {
                    transform: translateY(-10px);
                    box-shadow: 0 20px 40px rgba(0, 88, 231, 0.15);
                }

                    .about .feature-card:hover::before {
                        transform: scaleX(1);
                    }

            .about .feature-icon {
                width: 70px;
                height: 70px;
                background: var(--primary-color);
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                margin-bottom: 1.5rem;
                transition: all 0.3s ease;
            }

            .about .feature-card:hover .feature-icon {
                transform: scale(1.1) rotate(5deg);
                background: var(--secondary-color);
            }

            .about .feature-icon i {
                color: white;
                font-size: 1.8rem;
            }

            .about .feature-title {
                color: var(--text-dark);
                font-weight: 600;
                margin-bottom: 1rem;
                font-size: 1.3rem;
            }

            .about .feature-text {
                color: var(--text-light);
                line-height: 1.6;
                font-size: 0.95rem;
            }

            .about .cta-button {
                background: var(--primary-color);
                border: none;
                border-radius: 50px;
                padding: 15px 35px;
                color: white;
                font-weight: 600;
                text-decoration: none;
                display: inline-block;
                transition: all 0.3s ease;
                box-shadow: 0 5px 15px rgba(0, 88, 231, 0.3);
                position: relative;
                overflow: hidden;
            }

                .about .cta-button::before {
                    content: '';
                    position: absolute;
                    top: 0;
                    left: -100%;
                    width: 100%;
                    height: 100%;
                    background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
                    transition: left 0.5s ease;
                }

                .about .cta-button:hover {
                    transform: translateY(-2px);
                    box-shadow: 0 8px 25px rgba(0, 88, 231, 0.4);
                    background: var(--secondary-color);
                    color: white;
                    text-decoration: none;
                }

                    .about .cta-button:hover::before {
                        left: 100%;
                    }

            .about .org-chart-container {
                position: relative;
                background: white;
                border-radius: 20px;
                padding: 2rem;
                box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
                overflow: hidden;
                border: 2px solid var(--border-color);
            }

                .about .org-chart-container::before {
                    content: '';
                    position: absolute;
                    top: -50%;
                    left: -50%;
                    width: 200%;
                    height: 200%;
                    background: var(--light-bg);
                    transform: rotate(45deg);
                    z-index: 1;
                }

            .about .org-chart-img {
                width: 100%;
                height: auto;
                border-radius: 15px;
                transition: all 0.3s ease;
                position: relative;
                z-index: 2;
            }

            .about .org-chart-container:hover {
                border-color: var(--primary-color);
            }

                .about .org-chart-container:hover .org-chart-img {
                    transform: scale(1.02);
                }

            .about .chart-overlay {
                position: absolute;
                bottom: 2rem;
                left: 2rem;
                right: 2rem;
                background: rgba(255, 255, 255, 0.95);
                backdrop-filter: blur(10px);
                border-radius: 10px;
                padding: 1.5rem;
                z-index: 3;
                transform: translateY(100%);
                transition: transform 0.3s ease;
                border: 1px solid var(--border-color);
            }

            .about .org-chart-container:hover .chart-overlay {
                transform: translateY(0);
            }

            .about .chart-overlay h5 {
                color: var(--primary-color);
                font-weight: 600;
                margin-bottom: 0.5rem;
            }

            .about .chart-overlay p {
                color: var(--text-light);
                margin: 0;
                font-size: 0.9rem;
            }

        /* Animation Classes */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .about .animate-on-scroll {
            animation: fadeInUp 0.8s ease forwards;
        }

        .about .animate-delay-1 {
            animation-delay: 0.2s;
        }

        .about .animate-delay-2 {
            animation-delay: 0.4s;
        }

        .about .animate-delay-3 {
            animation-delay: 0.6s;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .about .feature-card {
                margin-bottom: 2rem;
            }

            .about .display-5 {
                font-size: 2rem;
            }

            .about .org-chart-container {
                margin-top: 3rem;
            }

            .about .lead-text {
                font-size: 1rem;
            }

            .about .feature-icon {
                width: 60px;
                height: 60px;
            }

                .about .feature-icon i {
                    font-size: 1.5rem;
                }
        }

        @media (max-width: 576px) {

            .clients-carousel-wrapper {
                background: rgba(255, 255, 255, 0.9);
                backdrop-filter: blur(10px);
                border-radius: 0;
                padding: 60px 0;
                margin: 40px 0;
                box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
                border: none;
                margin-left: calc(-50vw + 50%);
                position: relative;
                overflow: hidden;
            }

            .about .section-title {
                font-size: 1rem;
            }

            .about .cta-button {
                padding: 12px 25px;
                font-size: 0.9rem;
            }

            .about .chart-overlay {
                bottom: 1rem;
                left: 1rem;
                right: 1rem;
                padding: 1rem;
            }
        }


         /* Modal Design */
        .modal-content {
            border-radius: 15px;
            border: none;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }
            .modal-title {
            color:white !important;
        }


        .modal-header {
            border-bottom: none;
            padding: 20px;
        }

        .modal-body {
            padding: 30px;
        }

        .form-control {
            border-radius: 10px;
            border: 1px solid #e9ecef;
            transition: border-color 0.3s ease;
        }

            .form-control:focus {
                border-color: #0058e7;
                box-shadow: 0 0 5px rgba(0, 88, 231, 0.3);
            }

        .form-label {
            font-weight: 500;
            color: #2c3e50;
        }

        #formMessage {
            font-size: 0.9rem;
            font-weight: 500;
        }

            #formMessage.success {
                color: #28a745;
            }

            #formMessage.error {
                color: #dc3545;
            }

        .message-hidden {
            display: none;
        }

        /* Responsive modal sizing */
        @media (min-width: 768px) {
            .modal-dialog {
                max-width: 800px;
            }
        }

        @media (min-width: 992px) {
            .modal-dialog {
                max-width: 900px;
            }
        }

        /* Form field spacing */
        .form-row {
            margin-bottom: 1rem;
        }

            .form-row:last-child {
                margin-bottom: 0;
            }

        /* Demo button styling */
        .demo-btn {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 1000;
        }

/* FINAL PERFECT WATER CAROUSEL - NO TEXT OVERLAP */
.offer-section .stable-water-carousel {
    background: white;
    border-radius: 10px;
    box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    overflow: hidden;
    /* INCREASED HEIGHT TO ACCOMMODATE ALL TEXT */
    height: 380px;
    display: flex;
    flex-direction: column;
}

/* EXPANDED CONTENT AREA - MORE SPACE FOR TEXT */
.offer-section .stable-content-area {
    flex: 1;
    position: relative;
    padding: 20px;
    /* INCREASED HEIGHT FOR PROPER TEXT DISPLAY */
    height: 320px;
    overflow: hidden;
}

.offer-section .stable-slide {
    display: none;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    padding: 20px;
    animation: stableFadeIn 0.5s ease-in-out;
}

.offer-section .stable-slide.active {
    display: block;
}

/* LOGO BOX - OPTIMIZED SIZE */
.offer-section .stable-logo-box {
    position: relative;
    background: #f8f9fa;
    border-radius: 8px;
    padding: 15px;
    text-align: center;
    border: 1px solid #e9ecef;
    /* REDUCED HEIGHT TO GIVE MORE SPACE FOR TEXT */
    height: 140px;
    display: flex;
    align-items: center;
    justify-content: center;
}

.offer-section .stable-logo-box img {
    max-height: 90px;
    max-width: 100%;
    object-fit: contain;
}

.offer-section .stable-badge {
    position: absolute;
    top: 8px;
    right: 8px;
    background: #17a2b8;
    color: white;
    padding: 4px 8px;
    border-radius: 12px;
    font-size: 11px;
    font-weight: 600;
}

/* TEXT CONTENT - PROPER SPACING & NO OVERFLOW */
.offer-section .stable-text-content {
    /* INCREASED HEIGHT FOR ALL TEXT CONTENT */
    height: 180px;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    padding: 15px 0;
    gap: 8px;
}

.offer-section .stable-title {
    font-size: 1.25rem;
    font-weight: 700;
    color: #2c3e50;
    line-height: 1.3;
    /* FLEXIBLE HEIGHT FOR TITLE */
    min-height: 35px;
    margin-bottom: 5px;
}

.offer-section .stable-description {
    font-size: 0.9rem;
    color: #6c757d;
    line-height: 1.5;
    margin-bottom: 10px;
    /* INCREASED HEIGHT - NO TEXT CLIPPING */
    min-height: 75px;
    /* REMOVE OVERFLOW RESTRICTIONS */
    overflow: visible;
    display: block;
}

.offer-section .stable-features {
    margin-bottom: 12px;
    /* FLEXIBLE HEIGHT FOR FEATURES */
    min-height: 30px;
    overflow: visible;
}

.offer-section .feature-tag {
    display: inline-block;
    background: #e3f2fd;
    color: #1976d2;
    padding: 3px 8px;
    border-radius: 10px;
    font-size: 10px;
    font-weight: 500;
    margin-right: 5px;
    margin-bottom: 3px;
}

/* BUTTON AREA */
.offer-section .stable-button-area {
    margin-top: auto;
    padding-top: 5px;
}

/* FIXED NAVIGATION AREA - NEVER MOVES */
.offer-section .stable-nav-area {
    /* FIXED HEIGHT FOR NAVIGATION */
    height: 60px;
    background: #f8f9fa;
    border-top: 1px solid #e9ecef;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 20px;
    padding: 0 20px;
    flex-shrink: 0;
}

.offer-section .stable-nav-btn {
    background: white;
    border: 2px solid #0058e7;
    border-radius: 50%;
    width: 35px;
    height: 35px;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: all 0.3s ease;
    color: #0058e7;
    font-size: 14px;
}

.offer-section .stable-nav-btn:hover {
    background: #0058e7;
    color: white;
    transform: scale(1.1);
}

.offer-section .stable-dots {
    display: flex;
    gap: 8px;
    align-items: center;
}

.offer-section .stable-dot {
    width: 10px;
    height: 10px;
    border-radius: 50%;
    background: #bbb;
    cursor: pointer;
    transition: all 0.3s ease;
}

.offer-section .stable-dot.active,
.offer-section .stable-dot:hover {
    background: #0058e7;
    transform: scale(1.2);
}

/* SMOOTH ANIMATION */
@keyframes stableFadeIn {
    from {
        opacity: 0;
        transform: translateY(10px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

/* RESPONSIVE DESIGN - MAINTAINS STABILITY */
@media (max-width: 768px) {
    .offer-section .stable-water-carousel {
        height: 420px;
    }
    
    .offer-section .stable-content-area {
        height: 360px;
        padding: 15px;
    }
    
    .offer-section .stable-logo-box {
        height: 120px;
        margin-bottom: 15px;
    }
    
    .offer-section .stable-logo-box img {
        max-height: 80px;
    }
    
    .offer-section .stable-text-content {
        height: 200px;
        margin-top: 10px;
        gap: 6px;
    }
    
    .offer-section .stable-title {
        font-size: 1.1rem;
        min-height: 30px;
    }
    
    .offer-section .stable-description {
        font-size: 0.85rem;
        min-height: 65px;
    }
    
    .offer-section .stable-nav-btn {
        width: 30px;
        height: 30px;
        font-size: 12px;
    }
}

@media (max-width: 576px) {
    .offer-section .stable-water-carousel {
        height: 460px;
    }
    
    .offer-section .stable-content-area {
        height: 400px;
        padding: 15px;
    }
    
    .offer-section .stable-text-content {
        height: 220px;
        gap: 8px;
    }
    
    .offer-section .stable-description {
        min-height: 70px;
    }
    
    .offer-section .stable-nav-area {
        flex-direction: column;
        gap: 10px;
        height: 60px;
    }
    
    .offer-section .stable-dots {
        order: -1;
    }
}
    </style>
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
    <!-- Spinner End -->
    <!-- UPDATED NAVBAR WITH DYNAMIC FUNCTIONALITY -->
    <nav class="navbar navbar-expand-lg navbar-light navbar-transparent px-4 px-lg-5 py-3 py-lg-0" id="mainNavbar">
        <a href="" class="navbar-brand p-0">
            <img src="public/img/logo.png" alt="Dolphin's IT Services Logo" id="navbarLogo">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa fa-bars"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto py-0">
                <a href="#home" class="nav-item nav-link" data-section="home">Home</a>
                <a href="#about" class="nav-item nav-link" data-section="about">About</a>
                <a href="#services" class="nav-item nav-link" data-section="services">Services</a>
                <a href="#portfolio" class="nav-item nav-link" data-section="portfolio">Team</a>
                <div class="nav-item dropdown">
                    <a href="javascript:void(0)" class="nav-link" data-bs-toggle="dropdown">
                        <span class="dropdown-toggle">Solutions</span>
                    </a>
                    <div class="dropdown-menu m-0">
                        <a href="javascript:void(0)" class="dropdown-item" onclick="openSchoolSlider()">School Management System</a>
                        <a href="javascript:void(0)" class="dropdown-item" onclick="openWaterworksSlider()">Waterwork Information System</a>
                        <a href="javascript:void(0)" class="dropdown-item" onclick="openEventSlider()">Event Management System</a>
                        <a href="javascript:void(0)" class="dropdown-item" onclick="openSchoolIdSlider()">School ID System</a>
                    </div>
                </div>
                <a href="#footer" class="nav-item nav-link" data-section="footer">Contact Us</a>
            </div>
            <a href="#" class="btn btn-primary rounded-pill py-2 px-4 my-3 my-lg-0 flex-shrink-0" data-bs-toggle="modal" data-bs-target="#quoteModal">Get Quote</a>
        </div>
    </nav>

    <!-- Carousel Start -->
    <div class="header-carousel owl-carousel" id="home">
        <div class="header-carousel-item">
            <img src="public/img/bg3.jpg" class="img-fluid w-100" alt="Software Development">
            <div class="carousel-caption">
                <div class="container">
                    <div class="row gy-0 gx-5">
                        <div class="col-lg-0 col-xl-5"></div>
                        <div class="col-xl-7 animated fadeInLeft">
                            <div class="text-sm-center text-md-end">
                                <h4 class="text-primary text-uppercase fw-bold mb-4">Welcome To Dolphin's IT Services</h4>
                                <h1 class="display-4 text-uppercase text-white mb-4">Customize Software Solutions for Your Business</h1>
                                <p class="mb-5 fs-5">
                                    Empowering educational institutions and organizations with innovative software solutions. From School Management Systems to specialized applications, we deliver technology that transforms your operations.
                                </p>
                                <div class="d-flex justify-content-center justify-content-md-end flex-shrink-0 mb-4">
                                    <a class="btn btn-primary rounded-pill py-3 px-4 px-md-5 ms-2" href="#services">Our Services</a>
                                </div>
                                <div class="d-flex align-items-center justify-content-center justify-content-md-end">
                                    <h2 class="text-white me-2">Follow Us:</h2>
                                    <div class="d-flex justify-content-end ms-2">
                                        <a class="btn btn-md-square btn-light rounded-circle me-2" href="https://web.facebook.com/profile.php?id=61577378315366"><i class="fab fa-facebook-f"></i></a>
                                        <a class="btn btn-md-square btn-light rounded-circle mx-2" href="javascript:void(0)"><i class="fab fa-twitter"></i></a>
                                        <a class="btn btn-md-square btn-light rounded-circle mx-2" href="javascript:void(0)"><i class="fab fa-instagram"></i></a>
                                        <a class="btn btn-md-square btn-light rounded-circle ms-2" href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-carousel-item">
            <img src="public/img/bg2.jpg" class="img-fluid w-100" alt="IT Solutions">
            <div class="carousel-caption">
                <div class="container">
                    <div class="row g-5">
                        <div class="col-12 animated fadeInUp">
                            <div class="text-center">
                                <h4 class="text-primary text-uppercase fw-bold mb-4">Trusted IT Partner</h4>
                                <h1 class="display-4 text-uppercase text-white mb-4">Building Tomorrow's Technology Today</h1>
                                <p class="mb-5 fs-5">
                                    Partner with us to digitize your operations with cutting-edge software solutions. We specialize in educational technology, management systems, and custom applications tailored to your needs.
                                </p>
                                <div class="d-flex justify-content-center flex-shrink-0 mb-4">
                                    <a class="btn btn-light rounded-pill py-3 px-4 px-md-5 me-2" href="#about"><i class="fas fa-info-circle me-2"></i> Learn More</a>
                                    <a class="btn btn-primary rounded-pill py-3 px-4 px-md-5 ms-2" href="javascript:void(0)">Start Project</a>
                                </div>
                                <div class="d-flex align-items-center justify-content-center">
                                    <h2 class="text-white me-2">Follow Us:</h2>
                                    <div class="d-flex justify-content-end ms-2">
                                        <a class="btn btn-md-square btn-light rounded-circle me-2" href="https://web.facebook.com/profile.php?id=61577378315366"><i class="fab fa-facebook-f"></i></a>
                                        <a class="btn btn-md-square btn-light rounded-circle mx-2" href="javascript:void(0)"><i class="fab fa-twitter"></i></a>
                                        <a class="btn btn-md-square btn-light rounded-circle mx-2" href="javascript:void(0)"><i class="fab fa-instagram"></i></a>
                                        <a class="btn btn-md-square btn-light rounded-circle ms-2" href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->
    </div>
    <!-- Navbar & Hero End -->
    <div class="container-fluid about py-5" id="about">
        <div class="container py-5">
            <div class="row g-5 align-items-center">
                <div class="col-xl-7">
                    <div class="animate-on-scroll">
                        <h4 class="section-title">About Dolphin's IT Services</h4>
                        <h1 class="display-5">Your Trusted Partner in Digital Transformation</h1>
                        <p class="lead-text">
                            At Dolphin's IT Services, we specialize in developing custom software solutions that streamline operations and enhance productivity. With years of experience in educational technology and management systems, we've helped numerous institutions and organizations achieve their digital goals.
                        </p>

                        <div class="row g-4 mb-4">
                            <div class="col-md-6 animate-on-scroll animate-delay-1">
                                <div class="feature-card">
                                    <div class="feature-icon">
                                        <i class="fas fa-code"></i>
                                    </div>
                                    <h4 class="feature-title">Custom Development</h4>
                                    <p class="feature-text">Tailored software solutions designed specifically for your business needs and requirements.</p>
                                </div>
                            </div>
                            <div class="col-md-6 animate-on-scroll animate-delay-2">
                                <div class="feature-card">
                                    <div class="feature-icon">
                                        <i class="fas fa-graduation-cap"></i>
                                    </div>
                                    <h4 class="feature-title">Education Technology</h4>
                                    <p class="feature-text">Specialized in educational software including school management and student information systems.</p>
                                </div>
                            </div>
                        </div>

                        <div class="animate-on-scroll animate-delay-3">
                            <a href="#services" class="cta-button">
                                <i class="fas fa-arrow-right me-2"></i>
                                Explore Our Services
                            </a>
                        </div>
                    </div>
                </div>

                <div class="col-xl-5">
                    <div class="org-chart-container animate-on-scroll animate-delay-2">
                        <img src="public/assets/OrgChart1.png" class="org-chart-img" alt="Dolphin's IT Services Organizational Chart">
                        <div class="chart-overlay">
                            <h5><i class="fas fa-sitemap me-2"></i>Our Team Structure</h5>
                            <p>Discover how our organized team structure enables us to deliver exceptional results for every project.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->
    <!-- Services Start -->
    <div class="container-fluid service pb-5" id="services">
        <div class="container pb-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                <h4 class="text-primary" style="margin-top:20px !important;">Our Software Solutions</h4>
                <h1 class="display-5 mb-4">Comprehensive IT Services & Custom Software Development</h1>
                <p class="mb-0">
                    We provide end-to-end software development services, from initial consultation and system design to implementation, training, and ongoing support. Our solutions are built to scale with your organization's growth.
                </p>
            </div>
            <div class="row g-4">
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="service-item">
                        <div class="service-img">
                            <img src="public/img/schoolTH.png" class="img-fluid rounded-top w-100" alt="School Management System">
                        </div>
                        <div class="rounded-bottom p-4">
                            <a href="javascript:void(0)" class="h4 d-inline-block mb-4">School Management System</a>
                            <p class="mb-4">
                                Comprehensive student information system managing enrollment, grades, attendance, and academic records. Successfully implemented at St. Cecilia's College-Cebu, Inc.
                            </p>
                            <a class="btn btn-primary rounded-pill py-2 px-4" onclick="openSchoolSlider()">Learn More</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="service-item">
                        <div class="service-img">
                            <img src="public/img/waterTH.png" class="img-fluid rounded-top w-100" alt="Waterwork Information System">
                        </div>
                        <div class="rounded-bottom p-4">
                            <a href="javascript:void(0)" class="h4 d-inline-block mb-4">Waterwork Information System</a>
                            <p class="mb-4">
                                Advanced water utility management system for billing, customer management, and infrastructure monitoring. Deployed at MIWASSCO and BOWSSCO.
                            </p>
                            <button class="btn btn-primary rounded-pill py-2 px-4" onclick="openWaterworksSlider()">Learn More</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.6s">
                    <div class="service-item">
                        <div class="service-img">
                            <img src="public/img/eventTH.png" class="img-fluid rounded-top w-100" alt="Event Management System">
                        </div>
                        <div class="rounded-bottom p-4">
                            <a href="javascript:void(0)" class="h4 d-inline-block mb-4">Event Management System</a>
                            <p class="mb-4">
                                Complete event planning and management solution with registration, ticketing, scheduling, and attendee management capabilities.
                            </p>
                            <button class="btn btn-primary rounded-pill py-2 px-4" onclick="openEventSlider()">Learn More</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="service-item">
                        <div class="service-img">
                            <img src="public/img/idTH.png" class="img-fluid rounded-top w-100" alt="School ID System">
                        </div>
                        <div class="rounded-bottom p-4">
                            <a href="javascript:void(0)" class="h4 d-inline-block mb-4">School ID System</a>
                            <p class="mb-4">
                                Digital ID card management system with photo capture, card design, printing, and database integration. Implemented at GJFSI.
                            </p>
                            <button class="btn btn-primary rounded-pill py-2 px-4" onclick="openSchoolIdSlider()">Learn More</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="service-item">
                        <div class="service-img">
                            <img src="public/img/service-1.jpg" class="img-fluid rounded-top w-100" alt="Custom Software Development">
                        </div>
                        <div class="rounded-bottom p-4">
                            <a href="javascript:void(0)" class="h4 d-inline-block mb-4">Custom Software Development</a>
                            <p class="mb-4">
                                Bespoke software solutions tailored to your specific business requirements, from web applications to desktop systems.
                            </p>
                            <button class="btn btn-primary rounded-pill py-2 px-4" onclick="openCustomSlider()">Learn More</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.6s">
                    <div class="service-item">
                        <div class="service-img">
                            <img src="public/img/service-2.jpg" class="img-fluid rounded-top w-100" alt="IT Consulting">
                        </div>
                        <div class="rounded-bottom p-4">
                            <a href="javascript:void(0)" class="h4 d-inline-block mb-4">IT Consulting & Support</a>
                            <p class="mb-4">
                                Professional IT consulting services including system analysis, technology planning, implementation support, and ongoing maintenance.
                            </p>
                            <button class="btn btn-primary rounded-pill py-2 px-4" onclick="openConsultSlider()">Learn More</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Services End -->
    <!-- Features Start -->
    <div class="container-fluid feature pb-5">
        <div class="container pb-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                <h4 class="text-primary">Why Choose Us</h4>
                <h1 class="display-5 mb-4">Connecting Technology, Innovation, and Excellence</h1>
                <p class="mb-0">
                    Our commitment to quality, innovation, and client satisfaction sets us apart. We combine technical expertise with deep understanding of business processes to deliver solutions that truly make a difference.
                </p>
            </div>
            <div class="row g-4">
                <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="feature-item p-4">
                        <div class="feature-icon p-4 mb-4">
                            <i class="fas fa-laptop-code fa-4x text-primary"></i>
                        </div>
                        <h4>Modern Technology</h4>
                        <p class="mb-4">
                            We use the latest technologies and development frameworks to ensure your software is future-ready and scalable.
                        </p>
                        <a class="btn btn-primary rounded-pill py-2 px-4" href="javascript:void(0)">Learn More</a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.4s">
                    <div class="feature-item p-4">
                        <div class="feature-icon p-4 mb-4">
                            <i class="fas fa-users fa-4x text-primary"></i>
                        </div>
                        <h4>Expert Team</h4>
                        <p class="mb-4">
                            Our experienced developers and IT professionals bring years of expertise in software development and system integration.
                        </p>
                        <a class="btn btn-primary rounded-pill py-2 px-4" href="javascript:void(0)">Meet Team</a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.6s">
                    <div class="feature-item p-4">
                        <div class="feature-icon p-4 mb-4">
                            <i class="fas fa-headset fa-4x text-primary"></i>
                        </div>
                        <h4>24/7 Support</h4>
                        <p class="mb-4">
                            Comprehensive support and maintenance services to ensure your systems run smoothly and efficiently at all times.
                        </p>
                        <a class="btn btn-primary rounded-pill py-2 px-4" href="javascript:void(0)">Contact Support</a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.8s">
                    <div class="feature-item p-4">
                        <div class="feature-icon p-4 mb-4">
                            <i class="fas fa-shield-alt fa-4x text-primary"></i>
                        </div>
                        <h4>Secure Solutions</h4>
                        <p class="mb-4">
                            Security-first approach with robust data protection, user authentication, and compliance with industry standards.
                        </p>
                        <a class="btn btn-primary rounded-pill py-2 px-4" href="javascript:void(0)">Security Info</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Features End -->
    <!-- Clients/Partners Section Start -->
    <div class="container-fluid clients-section py-5 bg-light">
        <div class="container">
            <!-- Section Header -->
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                <h4 class="text-primary">Trusted Partners</h4>
                <h1 class="display-5 mb-4">Organizations That Trust Us</h1>
                <p class="mb-0">
                    We're proud to partner with leading educational institutions and organizations, delivering innovative software solutions that transform their operations.
                </p>
            </div>

            <!-- Animated Logo Carousel with Decorative Borders -->

            <div class="clients-carousel-wrapper simple-static-borders overflow-hidden position-relative">
                <!-- Decorative Corner Elements -->
                <div class="corner-decoration top-left"></div>
                <div class="corner-decoration top-right"></div>
                <div class="corner-decoration bottom-left"></div>
                <div class="corner-decoration bottom-right"></div>

                <!-- Lace Pattern Overlays -->
                <div class="lace-pattern-top"></div>
                <div class="lace-pattern-bottom"></div>

                <div class="clients-carousel d-flex align-items-center">
                    <!-- First set of logos -->
                    <div class="client-logo-item">
                        <img src="public/img/scclogo.png" alt="St. Cecilia's College-Cebu" class="client-logo">
                        <span class="client-name">St. Cecilia's College-Cebu</span>
                    </div>
                    <div class="client-logo-item">
                        <img src="public/img/bowssco-logo.jpg" alt="BOWSSCO" class="client-logo">
                        <span class="client-name">BOWSSCO</span>
                    </div>
                    <div class="client-logo-item">
                        <img src="public/img/miwassco-logo.jpg" alt="MIWASSCO" class="client-logo">
                        <span class="client-name">MIWASSCO</span>
                    </div>
                      <div class="client-logo-item">
                          <img src="public/img/towassco.png" alt="TUWASSCO" class="client-logo">
                          <span class="client-name">TUWASSCO</span>
                      </div>
                    <div class="client-logo-item">
                        <img src="public/img/GJFSI_Logo.png" alt="GJFSI" class="client-logo">
                        <span class="client-name">GJFSI</span>
                    </div>

                    <!-- Duplicate set for seamless loop -->
                    <div class="client-logo-item">
                        <img src="public/img/scclogo.png" alt="St. Cecilia's College-Cebu" class="client-logo">
                        <span class="client-name">St. Cecilia's College-Cebu</span>
                    </div>
                    <div class="client-logo-item">
                        <img src="public/img/bowssco-logo.jpg" alt="BOWSSCO" class="client-logo">
                        <span class="client-name">BOWSSCO</span>
                    </div>
                    <div class="client-logo-item">
                        <img src="public/img/miwassco-logo.png" alt="MIWASSCO" class="client-logo">
                        <span class="client-name">MIWASSCO</span>
                    </div>
                      <div class="client-logo-item">
                          <img src="public/img/towassco.png" alt="TUWASSCO" class="client-logo">
                          <span class="client-name">TUWASSCO</span>
                      </div>
                    <div class="client-logo-item">
                        <img src="public/img/GJFSI_Logo.png" alt="GJFSI" class="client-logo">
                        <span class="client-name">GJFSI</span>
                    </div>

                    <!-- Third set for extra smoothness -->
                    <div class="client-logo-item">
                        <img src="public/img/scclogo.png" alt="St. Cecilia's College-Cebu" class="client-logo">
                        <span class="client-name">St. Cecilia's College-Cebu</span>
                    </div>
                    <div class="client-logo-item">
                        <img src="public/img/bowssco-logo.jpg" alt="BOWSSCO" class="client-logo">
                        <span class="client-name">BOWSSCO</span>
                    </div>
                    <div class="client-logo-item">
                        <img src="public/img/miwassco-logo.png" alt="MIWASSCO" class="client-logo">
                        <span class="client-name">MIWASSCO</span>
                    </div>
                     <div class="client-logo-item">
                         <img src="public/img/towassco.png" alt="TUWASSCO" class="client-logo">
                         <span class="client-name">TUWASSCO</span>
                     </div>
                    <div class="client-logo-item">
                        <img src="public/img/GJFSI_Logo.png" alt="GJFSI" class="client-logo">
                        <span class="client-name">GJFSI</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

  <!-- Success Stories Section - FIXED HEIGHT & STABLE NAVIGATION -->
<div class="container-fluid offer-section pb-5">
    <div class="container pb-5">
        <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
            <h4 class="text-primary" style="margin-top:20px !important;">Success Stories</h4>
            <h1 class="display-5 mb-4">Our Client Implementations</h1>
            <p class="mb-0">
                Discover how we've helped our partners achieve their digital transformation goals with custom software solutions.
            </p>
        </div>
        <div class="row g-5 align-items-center">
            <div class="col-xl-5 wow fadeInLeft" data-wow-delay="0.2s">
                <div class="nav nav-pills bg-light rounded p-5">
                    <a class="accordion-link p-4 active mb-4" data-bs-toggle="pill" href="#collapseOne">
                        <h5 class="mb-0">St. Cecilia's College-Cebu, Inc. - School Management System</h5>
                    </a>
                    <a class="accordion-link p-4 mb-4" data-bs-toggle="pill" href="#collapseTwo">
                        <h5 class="mb-0">Waterwork Information System</h5>
                    </a>
                    <a class="accordion-link p-4 mb-4" data-bs-toggle="pill" href="#collapseThree">
                        <h5 class="mb-0">GJFSI - School ID System Implementation</h5>
                    </a>
                    <a class="accordion-link p-4 mb-0" data-bs-toggle="pill" href="#collapseFour">
                        <h5 class="mb-0">Custom Event Management Solutions</h5>
                    </a>
                </div>
            </div>
            <div class="col-xl-7 wow fadeInRight" data-wow-delay="0.4s">
                <div class="tab-content">
                    <!-- Tab 1: School Management - UNCHANGED -->
                    <div id="collapseOne" class="tab-pane fade show p-0 active">
                        <div class="row g-4">
                            <div class="col-md-7">
                                <img src="public/img/scclogo.png" class="img-fluid w-100 rounded" alt="School Management System">
                            </div>
                            <div class="col-md-5">
                                <h1 class="display-5 mb-4">Comprehensive School Management</h1>
                                <p class="mb-4">
                                    Successfully implemented a complete School Management System at St. Cecilia's College-Cebu, Inc., streamlining student enrollment, grade management, attendance tracking, and academic reporting processes.
                                </p>
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="javascript:void(0)">View Details</a>
                            </div>
                        </div>
                    </div>

                    <!-- Tab 2: Water Information System - FIXED HEIGHT CAROUSEL -->
                   <!-- Updated HTML Structure with Better Text Layout -->
<div id="collapseTwo" class="tab-pane fade show p-0">
    <div class="stable-water-carousel">
        <!-- Fixed Content Area -->
        <div class="stable-content-area">
            <!-- Slide 1 - MIWASSCO -->
            <div class="stable-slide active">
                <div class="row g-3 h-100 align-items-stretch">
                    <div class="col-md-6">
                        <div class="stable-logo-box">
                            <img src="public/img/miwassco-logo.jpg" class="img-fluid rounded" alt="MIWASSCO">
                            <span class="stable-badge">MIWASSCO</span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="stable-text-content">
                            <h3 class="stable-title">Advanced Water Management</h3>
                            <p class="stable-description">
                                Comprehensive Waterwork Information System for MIWASSCO, revolutionizing customer billing and infrastructure monitoring with cutting-edge technology solutions.
                            </p>
                            <div class="stable-features">
                               <%-- <span class="feature-tag">Automated Billing</span>
                                <span class="feature-tag">Customer Portal</span>--%>
                            </div>
                            <div class="stable-button-area">
                                <a class="btn btn-primary btn-sm rounded-pill" href="javascript:void(0)">View Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Slide 2 - BOWSSCO -->
            <div class="stable-slide">
                <div class="row g-3 h-100 align-items-stretch">
                    <div class="col-md-6">
                        <div class="stable-logo-box">
                            <img src="public/img/bowssco-logo.jpg" class="img-fluid rounded" alt="BOWSSCO">
                            <span class="stable-badge">BOWSSCO</span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="stable-text-content">
                            <h3 class="stable-title">Multi-Area Water Solutions</h3>
                            <p class="stable-description">
                                Advanced Water Utility Management System for BOWSSCO, streamlining operations across multiple service areas with integrated monitoring and control systems.
                            </p>
                            <div class="stable-features">
<%--                                <span class="feature-tag">Multi-area Management</span>
                                <span class="feature-tag">Quality Monitoring</span>--%>
                            </div>
                            <div class="stable-button-area">
                                <a class="btn btn-primary btn-sm rounded-pill" href="javascript:void(0)">View Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Slide 3 - TUWASSCO -->
            <div class="stable-slide">
                <div class="row g-3 h-100 align-items-stretch">
                    <div class="col-md-6">
                        <div class="stable-logo-box">
                            <img src="public/img/towassco.png" class="img-fluid rounded" alt="TUWASSCO">
                            <span class="stable-badge">TUWASSCO</span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="stable-text-content">
                            <h3 class="stable-title">Sustainable Water Management</h3>
                            <p class="stable-description">
                                State-of-the-art Waterwork Information System for TUWASSCO, focusing on sustainable water management with advanced leak detection and automated meter reading capabilities.
                            </p>
                            <div class="stable-features">
<%--                                <span class="feature-tag">Leak Detection</span>
                                <span class="feature-tag">Auto Meter Reading</span>--%>
                            </div>
                            <div class="stable-button-area">
                                <a class="btn btn-primary btn-sm rounded-pill" href="javascript:void(0)">View Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Fixed Navigation Area -->
        <div class="stable-nav-area">
            <button class="stable-nav-btn prev-btn" onclick="changeStableSlide(-1)">
                <i class="fas fa-chevron-left"></i>
            </button>
            <div class="stable-dots">
                <span class="stable-dot active" onclick="currentStableSlide(1)"></span>
                <span class="stable-dot" onclick="currentStableSlide(2)"></span>
                <span class="stable-dot" onclick="currentStableSlide(3)"></span>
            </div>
            <button class="stable-nav-btn next-btn" onclick="changeStableSlide(1)">
                <i class="fas fa-chevron-right"></i>
            </button>
        </div>
    </div>
</div>

                    <!-- Tab 3: School ID System - UNCHANGED -->
                    <div id="collapseThree" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-md-7">
                                <img src="public/img/GJFSI_Logo.png" class="img-fluid w-100 rounded" alt="School ID System">
                            </div>
                            <div class="col-md-5">
                                <h1 class="display-5 mb-4">Digital ID Management</h1>
                                <p class="mb-4">
                                    Implemented a comprehensive School ID System for GJFSI, featuring digital photo capture, card design, printing capabilities, and integrated database management.
                                </p>
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="javascript:void(0)">View Details</a>
                            </div>
                        </div>
                    </div>

                    <!-- Tab 4: Event Management - UNCHANGED -->
                    <div id="collapseFour" class="tab-pane fade show p-0">
                        <div class="row g-4">
                            <div class="col-md-7">
                                <img src="public/img/offer-4.jpg" class="img-fluid w-100 rounded" alt="Event Management System">
                            </div>
                            <div class="col-md-5">
                                <h1 class="display-5 mb-4">Event Management Excellence</h1>
                                <p class="mb-4">
                                    Custom Event Management Systems designed for various organizations, providing complete event planning, registration, ticketing, and attendee management solutions.
                                </p>
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="javascript:void(0)">View Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Success Stories Section End -->
    <!-- Portfolio/Clients End -->
    <!-- Blog Start -->
    <div class="container-fluid blog pb-5">
        <div class="container pb-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                <h4 class="text-primary">Tech Insights & Updates</h4>
                <h1 class="display-5 mb-4">Latest in Software Development</h1>
                <p class="mb-0">
                    Stay updated with the latest trends in software development, technology insights, and best practices from our team of experts.
                </p>
            </div>
            <div class="owl-carousel blog-carousel wow fadeInUp" data-wow-delay="0.2s">
                <div class="blog-item p-4">
                    <div class="blog-img mb-4">
                        <img src="public/img/service-3.jpg" class="img-fluid w-100 rounded" alt="School Management Systems">
                        <div class="blog-title">
                            <a href="javascript:void(0)" class="btn">Education Tech</a>
                        </div>
                    </div>
                    <a href="javascript:void(0)" class="h4 d-inline-block mb-3">Modern School Management Systems: Features & Benefits</a>
                    <p class="mb-4">
                        Discover how modern school management systems are transforming educational institutions with automated processes and improved efficiency...
                    </p>

                </div>
                <div class="blog-item p-4">
                    <div class="blog-img mb-4">
                        <img src="public/img/service-4.jpg" class="img-fluid w-100 rounded" alt="Water Management Technology">
                        <div class="blog-title">
                            <a href="javascript:void(0)" class="btn">Utility Management</a>
                        </div>
                    </div>
                    <a href="javascript:void(0)" class="h4 d-inline-block mb-3">Digital Transformation in Water Utilities</a>
                    <p class="mb-4">
                        How digital solutions are revolutionizing water utility management, from billing automation to infrastructure monitoring...
                    </p>

                </div>
                <div class="blog-item p-4">
                    <div class="blog-img mb-4">
                        <img src="public/img/service-5.jpg" class="img-fluid w-100 rounded" alt="Custom Software Development">
                        <div class="blog-title">
                            <a href="javascript:void(0)" class="btn">Development</a>
                        </div>
                    </div>
                    <a href="javascript:void(0)" class="h4 d-inline-block mb-3">Best Practices in Custom Software Development</a>
                    <p class="mb-4">
                        Essential practices and methodologies for successful custom software development projects, from planning to deployment...
                    </p>

                </div>
            </div>
        </div>
    </div>
    <!-- Blog End -->
    <!-- FAQs Start -->
    <div class="container-fluid faq-section pb-5">
        <div class="container pb-5 overflow-hidden">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                <h4 class="text-primary">FAQs</h4>
                <h1 class="display-5 mb-4">Frequently Asked Questions</h1>
                <p class="mb-0">
                    Get answers to common questions about our software development services, implementation process, and support offerings.
                </p>
            </div>
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeInLeft" data-wow-delay="0.2s">
                    <div class="accordion accordion-flush bg-light rounded p-5" id="accordionFlushSection">
                        <div class="accordion-item rounded-top">
                            <h2 class="accordion-header" id="flush-headingOne">
                                <button class="accordion-button collapsed rounded-top" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                    What types of software solutions do you develop?
                                </button>
                            </h2>
                            <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushSection">
                                <div class="accordion-body">We specialize in School Management Systems, Waterwork Information Systems, Event Management Systems, School ID Systems, and custom software solutions tailored to your specific business needs.</div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                                    How long does it take to develop a custom software solution?
                                </button>
                            </h2>
                            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushSection">
                                <div class="accordion-body">Development timelines vary based on project complexity and requirements. Typically, projects range from 3-12 months. We provide detailed project timelines during the consultation phase.</div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                                    Do you provide training and support after implementation?
                                </button>
                            </h2>
                            <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushSection">
                                <div class="accordion-body">Yes, we provide comprehensive training for your team and ongoing technical support. Our support packages include maintenance, updates, and 24/7 technical assistance.</div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingFour">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                                    Can you integrate with existing systems?
                                </button>
                            </h2>
                            <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushSection">
                                <div class="accordion-body">We specialize in system integration and can seamlessly connect our solutions with your existing software infrastructure and databases.</div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingFive">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
                                    What technologies do you use for development?
                                </button>
                            </h2>
                            <div id="flush-collapseFive" class="accordion-collapse collapse" aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushSection">
                                <div class="accordion-body">We use modern technologies including .NET, ASP.NET, SQL Server, JavaScript frameworks, and cloud platforms to ensure robust, scalable, and secure solutions.</div>
                            </div>
                        </div>
                        <div class="accordion-item rounded-bottom">
                            <h2 class="accordion-header" id="flush-headingSix">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
                                    How do you ensure data security and privacy?
                                </button>
                            </h2>
                            <div id="flush-collapseSix" class="accordion-collapse collapse" aria-labelledby="flush-headingSix" data-bs-parent="#accordionFlushSection">
                                <div class="accordion-body">We implement industry-standard security measures including data encryption, secure authentication, regular security audits, and compliance with data protection regulations.</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 wow fadeInRight" data-wow-delay="0.2s">
                    <div class="bg-primary rounded">
                        <img src="public/img/about-2.png" class="img-fluid w-100" alt="Software Development Process">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- FAQs End -->
    <!-- Team Start -->
    <div class="container-fluid team pb-5" id="portfolio">
        <div class="container pb-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                <h4 class="text-primary">Our Development Team</h4>
                <h1 class="display-5 mb-4">Meet Our Expert Developers</h1>
                <p class="mb-0">
                    Our talented team of software developers and IT professionals brings years of experience in creating innovative solutions for diverse industries.
                </p>
            </div>

            <!-- Team Carousel - keeping all your existing Bootstrap classes -->
            <div class="owl-carousel team-carousel wow fadeInUp" data-wow-delay="0.2s">

                <div class="team-item">
                    <div class="team-img">
                        <img src="public/img/moreno1s.png" class="img-fluid" alt="Peter John Z. Beroy">
                    </div>
                    <div class="team-title">
                        <h4 class="mb-0">Alfredo S. Moreno Jr.</h4>
                        <p class="mb-0">Chief Executive Officer</p>
                    </div>
                    <div class="team-icon">
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="https://web.facebook.com/alfredosmorenojr"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-0" href="javascript:void(0)"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>

                <div class="team-item">
                    <div class="team-img">
                        <img src="public/img/joel1s.png" class="img-fluid" alt="Edwin Ortega">
                    </div>
                    <div class="team-title">
                        <h4 class="mb-0">Joel Rubia</h4>
                        <p class="mb-0">Chief Operating Officer</p>
                    </div>
                    <div class="team-icon">
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="https://web.facebook.com/jlrubia"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-0" href="javascript:void(0)"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>

                <div class="team-item">
                    <div class="team-img">
                        <img src="public/img/peter11s.png" class="img-fluid" alt="Genesis Baraclan">
                    </div>
                    <div class="team-title">
                        <h4 class="mb-0">Peter John Z. Beroy</h4>
                        <p class="mb-0">Software Developer</p>
                    </div>
                    <div class="team-icon">
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="https://web.facebook.com/rorouni.peter"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-0" href="javascript:void(0)"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>

                <div class="team-item">
                    <div class="team-img">
                        <img src="public/img/edwin1s.png" class="img-fluid" alt="Francis Charles Mangaron">
                    </div>
                    <div class="team-title">
                        <h4 class="mb-0">Edwin Ortega</h4>
                        <p class="mb-0">Software Developer</p>
                    </div>
                    <div class="team-icon">
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="https://web.facebook.com/agetro14"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-0" href="javascript:void(0)"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>

                <div class="team-item">
                    <div class="team-img">
                        <img src="public/img/charles1s.png" class="img-fluid" alt="Dr. Alfredo S. Moreno">
                    </div>
                    <div class="team-title">
                        <h4 class="mb-0">Charles Francis Mangaron</h4>
                        <p class="mb-0">Software Developer</p>
                    </div>
                    <div class="team-icon">
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="https://web.facebook.com/charles.mangaron.5"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-0" href="javascript:void(0)"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>

                <div class="team-item">
                    <div class="team-img">
                        <img src="public/img/genesis1s.png" class="img-fluid" alt="Joel Rubia">
                    </div>
                    <div class="team-title">
                        <h4 class="mb-0">Genesis Baraclan</h4>
                        <p class="mb-0">Software Developer</p>
                    </div>
                    <div class="team-icon">
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="https://web.facebook.com/genesis.baraclan.2024"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-0" href="javascript:void(0)"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>

                <div class="team-item">
                    <div class="team-img">
                        <img src="public/img/singcol1s.png" class="img-fluid" alt="Angelika Singcol">
                    </div>
                    <div class="team-title">
                        <h4 class="mb-0">Angelika Singcol</h4>
                        <p class="mb-0">Secretary</p>
                    </div>
                    <div class="team-icon">
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="https://web.facebook.com/jeric.sarsalijo"><i class="fab fa-facebook-f"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-twitter"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a>
                        <a class="btn btn-primary btn-sm-square rounded-circle me-0" href="javascript:void(0)"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
                 <div class="team-item">
                     <div class="team-img">
                         <img src="public/img/marlon1s.png" class="img-fluid" alt="Marlon Rabanes">
                     </div>
                     <div class="team-title">
                         <h4 class="mb-0">Marlon S. Rabanes Jr.</h4>
                         <p class="mb-0">Marketing Officer</p>
                     </div>
                     <div class="team-icon">
                         <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-facebook-f"></i></a>
                         <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-twitter"></i></a>
                         <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a>
                         <a class="btn btn-primary btn-sm-square rounded-circle me-0" href="javascript:void(0)"><i class="fab fa-instagram"></i></a>
                     </div>
                 </div>

            </div>
        </div>
    </div>
    <!-- Team End -->
    <!-- Testimonial Start -->
    <div class="container-fluid testimonial pb-5">
        <div class="container pb-5">
            <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
                <h4 class="text-primary">Client Testimonials</h4>
                <h1 class="display-5 mb-4">What Our Clients Say</h1>
                <p class="mb-0">
                    Hear from our satisfied clients about their experience working with Dolphin's IT Services and the impact our solutions have made on their organizations.
                </p>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.2s">
                <div class="testimonial-item">
                    <div class="testimonial-quote-left">
                        <i class="fas fa-quote-left fa-2x"></i>
                    </div>
                    <div class="testimonial-img">
                        <img src="public/img/testimonial-1.jpg" class="img-fluid" alt="Client Testimonial">
                    </div>
                    <div class="testimonial-text">
                        <p class="mb-0">
                            The School Management System developed by Dolphin's IT Services has completely transformed our administrative processes. Student enrollment and grade management are now seamless and efficient.
                        </p>
                    </div>
                    <div class="testimonial-title">
                        <div>
                            <h4 class="mb-0">Maria Santos</h4>
                            <p class="mb-0">Registrar, St. Cecilia's College-Cebu</p>
                        </div>
                        <div class="d-flex text-primary">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                    </div>
                    <div class="testimonial-quote-right">
                        <i class="fas fa-quote-right fa-2x"></i>
                    </div>
                </div>
                <div class="testimonial-item">
                    <div class="testimonial-quote-left">
                        <i class="fas fa-quote-left fa-2x"></i>
                    </div>
                    <div class="testimonial-img">
                        <img src="public/img/testimonial-2.jpg" class="img-fluid" alt="Client Testimonial">
                    </div>
                    <div class="testimonial-text">
                        <p class="mb-0">
                            The Waterwork Information System has revolutionized our billing and customer management processes. The system is user-friendly and has significantly improved our operational efficiency.
                        </p>
                    </div>
                    <div class="testimonial-title">
                        <div>
                            <h4 class="mb-0">Roberto Cruz</h4>
                            <p class="mb-0">Manager, MIWASSCO</p>
                        </div>
                        <div class="d-flex text-primary">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                    </div>
                    <div class="testimonial-quote-right">
                        <i class="fas fa-quote-right fa-2x"></i>
                    </div>
                </div>
                <div class="testimonial-item">
                    <div class="testimonial-quote-left">
                        <i class="fas fa-quote-left fa-2x"></i>
                    </div>
                    <div class="testimonial-img">
                        <img src="public/img/testimonial-3.jpg" class="img-fluid" alt="Client Testimonial">
                    </div>
                    <div class="testimonial-text">
                        <p class="mb-0">
                            The School ID System implementation was smooth and professional. The team provided excellent training and support throughout the process. Highly recommended!
                        </p>
                    </div>
                    <div class="testimonial-title">
                        <div>
                            <h4 class="mb-0">Jennifer Lim</h4>
                            <p class="mb-0">IT Coordinator, GJFSI</p>
                        </div>
                        <div class="d-flex text-primary">
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                            <i class="fas fa-star"></i>
                        </div>
                    </div>
                    <div class="testimonial-quote-right">
                        <i class="fas fa-quote-right fa-2x"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->
    <!-- Footer Start -->
    <div class="container-fluid footer py-5 wow fadeIn" data-wow-delay="0.2s" id="footer">
        <div class="container py-5 border-start-0 border-end-0" style="border: 1px solid; border-color: rgb(255, 255, 255, 0.08);">
            <div class="row g-5">
                <div class="col-md-6 col-lg-6 col-xl-4">
                    <div class="footer-item">
                        <a href="javascript:void(0)" class="p-0">
                            <h4 class="text-white"><i class="fas fa-code me-3"></i>Dolphin's IT Services</h4>
                        </a>
                        <p class="mb-4">Empowering organizations with innovative software solutions. From educational institutions to utility companies, we deliver technology that transforms operations and drives growth.</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-2">
                    <div class="footer-item">
                        <h4 class="text-white mb-4">Our Solutions</h4>
                        <a href="javascript:void(0)"><i class="fas fa-angle-right me-2"></i> School Management</a>
                        <a href="javascript:void(0)"><i class="fas fa-angle-right me-2"></i> Waterwork System</a>
                        <a href="javascript:void(0)"><i class="fas fa-angle-right me-2"></i> Event Management</a>
                        <a href="javascript:void(0)"><i class="fas fa-angle-right me-2"></i> School ID System</a>
                        <a href="javascript:void(0)"><i class="fas fa-angle-right me-2"></i> Custom Development</a>
                        <a href="javascript:void(0)"><i class="fas fa-angle-right me-2"></i> IT Consulting</a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3">
                    <div class="footer-item">
                        <h4 class="text-white mb-4">Support & Resources</h4>
                        <a href="javascript:void(0)"><i class="fas fa-angle-right me-2"></i> Technical Support</a>
                        <a href="javascript:void(0)"><i class="fas fa-angle-right me-2"></i> Documentation</a>
                        <a href="javascript:void(0)"><i class="fas fa-angle-right me-2"></i> Training Programs</a>
                        <a href="javascript:void(0)"><i class="fas fa-angle-right me-2"></i> Maintenance Plans</a>
                        <a href="javascript:void(0)"><i class="fas fa-angle-right me-2"></i> FAQ</a>
                        <a href="javascript:void(0)"><i class="fas fa-angle-right me-2"></i> Contact Support</a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-6 col-xl-3">
                    <div class="footer-item">
                        <h4 class="text-white mb-4">Contact Information</h4>
                        <div class="d-flex align-items-center mb-2">
                            <i class="fas fa-map-marker-alt text-primary me-3"></i>
                            <p class="text-white mb-0">Lawaan I, Talisay City, Cebu, Philippines</p>
                        </div>              
                        <div class="d-flex align-items-center mb-2">
                            <i class="fas fa-envelope text-primary me-3"></i>
                            <p class="text-white mb-0">info@dolphinservices.app</p>
                        </div>
                        <div class="d-flex align-items-center mb-2">
                            <i class="fa fa-phone-alt text-primary me-3"></i>
                            <p class="text-white mb-0">+63 921-292-3944</p>
                        </div>
                        <div class="d-flex align-items-center mb-4">
                            <i class="fas fa-globe text-primary me-3"></i>
                            <p class="text-white mb-0 break-all">https://dolphinservices.app/</p>
                        </div>
                        <div class="d-flex">
                            <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="https://web.facebook.com/profile.php?id=61577378315366"><i class="fab fa-facebook-f text-white"></i></a>
                            <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-twitter text-white"></i></a>
                            <a class="btn btn-primary btn-sm-square rounded-circle me-3" href="javascript:void(0)"><i class="fab fa-instagram text-white"></i></a>
                            <a class="btn btn-primary btn-sm-square rounded-circle me-0" href="javascript:void(0)"><i class="fab fa-linkedin-in text-white"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->
    <!-- Copyright Start -->
    <div class="container-fluid copyright py-4">
        <div class="container">
            <div class="row g-4 align-items-center">
                <div class="col-md-6 text-center text-md-start mb-md-0">
                    <span class="text-body"><a href="javascript:void(0)" class="border-bottom text-white"><i class="fas fa-copyright text-light me-2"></i>Dolphin's IT Services</a>, All rights reserved.</span>
                </div>
                <div class="col-md-6 text-center text-md-end text-body">
                    Designed and Developed by <a class="border-bottom text-white" href="javascript:void(0)">Dolphin's IT Services-Peter & Edwin </a>
                </div>
            </div>
        </div>
    </div>
    <!-- Copyright End -->
    <!-- Event Management Slider -->
    <div class="slider-overlay" id="sliderOverlay" onclick="closeEventSlider()"></div>
    <div class="event-slider" id="eventSlider">
        <div class="slider-header">
            <h2 class="slider-title"><i class="fas fa-calendar-alt me-3"></i><span class="event-management-text">Event Management System</span></h2>
            <button class="slider-close" onclick="closeEventSlider()">×</button>
        </div>
        <div class="slider-content" id="sliderContent">
            <!-- Content will be loaded here -->
        </div>
    </div>


    <!-- Quote Modal -->
    <div class="modal fade" id="quoteModal" tabindex="-1" aria-labelledby="quoteModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header bg-primary text-white">
                    <h5 class="modal-title" id="quoteModalLabel">
                        <i class="fas fa-quote-left me-2"></i>Get a Free Quote
                    </h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="quoteForm">
                        <!-- Row 1: Name and Email -->
                        <div class="row form-row">
                            <div class="col-md-6 mb-3">
                                <label for="name" class="form-label">Full Name</label>
                                <input type="text" class="form-control" id="name" placeholder="Enter your full name" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="email" class="form-label">Email Address</label>
                                <input type="email" class="form-control" id="email" placeholder="Enter your email address" required>
                            </div>
                        </div>

                        <!-- Row 2: Organization and Phone -->
                        <div class="row form-row">
                            <div class="col-md-6 mb-3">
                                <label for="organization" class="form-label">Organization Name</label>
                                <input type="text" class="form-control" id="organization" placeholder="Enter your organization name" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="phone" class="form-label">Phone Number</label>
                                <input type="tel" class="form-control" id="phone" placeholder="Enter your phone number (optional)">
                            </div>
                        </div>

                        <!-- Row 3: Service and Timeline -->
                        <div class="row form-row">
                            <div class="col-md-6 mb-3">
                                <label for="service" class="form-label">Service of Interest</label>
                                <select class="form-control" id="service" required>
                                    <option value="" disabled selected>Select a service</option>
                                    <option value="School Management System">School Management System</option>
                                    <option value="Waterwork Information System">Waterwork Information System</option>
                                    <option value="Event Management System">Event Management System</option>
                                    <option value="School ID System">School ID System</option>
                                    <option value="Custom Software Development">Custom Software Development</option>
                                    <option value="IT Consulting & Support">IT Consulting & Support</option>
                                </select>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="timeline" class="form-label">Preferred Project Timeline</label>
                                <select class="form-control" id="timeline">
                                    <option value="" selected>Not specified</option>
                                    <option value="1-3 months">1-3 months</option>
                                    <option value="3-6 months">3-6 months</option>
                                    <option value="6-12 months">6-12 months</option>
                                    <option value="12+ months">12+ months</option>
                                </select>
                            </div>
                        </div>

                        <!-- Row 4: Project Details (Full width) -->
                        <div class="row form-row">
                            <div class="col-12 mb-3">
                                <label for="message" class="form-label">Project Details</label>
                                <textarea class="form-control" id="message" rows="4" placeholder="Describe your project requirements or additional details" required></textarea>
                            </div>
                        </div>

                        <!-- Message and Submit Button -->
                        <div id="formMessage" class="mt-3 message-hidden" aria-live="polite"></div>
                        <button type="submit" class="btn btn-primary rounded-pill py-2 px-4 w-100" id="submitBtn">
                            Submit Request
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Back to Top -->
    <a href="#" class="btn btn-primary btn-lg-square rounded-circle back-to-top"><i class="fa fa-arrow-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="public/lib/wow/wow.min.js"></script>
    <script src="public/lib/easing/easing.min.js"></script>
    <script src="public/lib/waypoints/waypoints.min.js"></script>
    <script src="public/lib/counterup/counterup.min.js"></script>
    <script src="public/lib/lightbox/js/lightbox.min.js"></script>
    <script src="public/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="public/js/main.js"></script>

    <!-- Template Javascript -->
    <script src="public/js/team-carousel-script.js"></script>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
   
        <script src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>
        <script>
            // Initialize EmailJS with your Public Key (User ID)
            (function () {
                emailjs.init("-Yl2P_BbvT0zO6Lbq");
            })();

            // Form submission handler
            document.getElementById('quoteForm').addEventListener('submit', function (e) {
                e.preventDefault();

                const formMessage = document.getElementById('formMessage');
                const submitBtn = document.getElementById('submitBtn');

                // Show loading state
                submitBtn.disabled = true;
                submitBtn.innerHTML = '<i class="fas fa-spinner fa-spin me-2"></i>Submitting...';

                // Collect form data
                const formData = {
                    name: document.getElementById('name').value,
                    email: document.getElementById('email').value,
                    organization: document.getElementById('organization').value,
                    phone: document.getElementById('phone').value,
                    service: document.getElementById('service').value,
                    timeline: document.getElementById('timeline').value,
                    message: document.getElementById('message').value
                };

                // Send auto reply email to sender
                const mainEmailPromise = emailjs.send("service_55vopjm", "template_e7dbo26", formData);

                // Send Main email to info@dolphinservices.app
                const contactUsEmailPromise = emailjs.send("service_55vopjm", "template_3u4sp2l", formData);

                // Handle both email promises
                Promise.all([mainEmailPromise, contactUsEmailPromise])
                    .then(function ([mainResponse, contactUsResponse]) {
                        formMessage.className = 'mt-3 success';
                        formMessage.textContent = 'Thank you! Your quote request has been submitted successfully. You should receive a confirmation email shortly.';
                        formMessage.style.display = 'block';

                        // Reset button and form
                        submitBtn.disabled = false;
                        submitBtn.innerHTML = 'Submit Request';
                        document.getElementById('quoteForm').reset();

                        // Hide message after 3 seconds
                        setTimeout(() => {
                            formMessage.style.display = 'none';
                        }, 3000);
                    })
                    .catch(function (error) {
                        formMessage.className = 'mt-3 error';
                        formMessage.textContent = 'Oops! Something went wrong. Please try again later.';
                        formMessage.style.display = 'block';

                        // Reset button
                        submitBtn.disabled = false;
                        submitBtn.innerHTML = 'Submit Request';
                    });
            });
        </script>

    <!-- Event Slider JavaScript -->
    <script>

        // Intersection Observer for scroll animations
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }
            });
        }, observerOptions);

        // Initialize animations when DOM is loaded
        document.addEventListener('DOMContentLoaded', () => {
            const animatedElements = document.querySelectorAll('.about .animate-on-scroll');

            animatedElements.forEach(el => {
                el.style.opacity = '0';
                el.style.transform = 'translateY(30px)';
                observer.observe(el);
            });
        });

        // Smooth scrolling for navigation links
        document.addEventListener('DOMContentLoaded', function () {
            // Get all navigation links
            const navLinks = document.querySelectorAll('.nav-link[data-section]');
            const sections = document.querySelectorAll('#home, #about, #services, #portfolio, #footer');

            // Add smooth scrolling behavior
            navLinks.forEach(link => {
                link.addEventListener('click', function (e) {
                    e.preventDefault();
                    const targetId = this.getAttribute('href');
                    const targetSection = document.querySelector(targetId);

                    if (targetSection) {
                        // Calculate offset for navbar height
                        const navbarHeight = document.querySelector('.navbar').offsetHeight;
                        const targetPosition = targetSection.offsetTop - navbarHeight - 20;

                        // Smooth scroll to target
                        window.scrollTo({
                            top: targetPosition,
                            behavior: 'smooth'
                        });

                        // Close mobile menu if open
                        const navbarCollapse = document.querySelector('#navbarCollapse');
                        if (navbarCollapse.classList.contains('show')) {
                            const bsCollapse = new bootstrap.Collapse(navbarCollapse);
                            bsCollapse.hide();
                        }
                    }
                });
            });

            // Active navigation state management
            function updateActiveNav() {
                const scrollPosition = window.scrollY + 100; // Offset for better detection

                let currentSection = 'home';

                sections.forEach(section => {
                    const sectionTop = section.offsetTop;
                    const sectionHeight = section.offsetHeight;
                    const sectionId = section.getAttribute('id');

                    if (scrollPosition >= sectionTop && scrollPosition < sectionTop + sectionHeight) {
                        currentSection = sectionId;
                    }
                });

                // Update active class
                navLinks.forEach(link => {
                    link.classList.remove('active');
                    if (link.getAttribute('data-section') === currentSection) {
                        link.classList.add('active');
                    }
                });
            }

            // Listen for scroll events
            let ticking = false;
            window.addEventListener('scroll', function () {
                if (!ticking) {
                    requestAnimationFrame(function () {
                        updateActiveNav();
                        ticking = false;
                    });
                    ticking = true;
                }
            });

            // Initial call to set active state
            updateActiveNav();
        });
        function openEventSlider() {
            const slider = document.getElementById('eventSlider');
            const overlay = document.getElementById('sliderOverlay');
            const content = document.getElementById('sliderContent');
            const header = document.querySelector('.slider-header h2');

            // Update header for Event Management
            header.innerHTML = '<i class="fas fa-calendar-alt me-3"></i>Event Management System';
            header.classList.add('slider-title');

            // Load events.html content
            fetch('events.aspx')
                .then(response => response.text())
                .then(aspx => {
                    content.innerHTML = aspx;
                    slider.classList.add('active');
                    overlay.classList.add('active');
                    document.body.style.overflow = 'hidden';
                })
                .catch(error => {
                    console.error('Error loading events content:', error);
                    content.innerHTML = '<p class="text-center text-danger">Error loading content. Please try again.</p>';
                    slider.classList.add('active');
                    overlay.classList.add('active');
                    document.body.style.overflow = 'hidden';
                });
            updateNavForSlider();
        }


        function closeEventSlider() {
            const slider = document.getElementById('eventSlider');
            const overlay = document.getElementById('sliderOverlay');

            slider.classList.remove('active');
            overlay.classList.remove('active');
            document.body.style.overflow = 'auto';


            setTimeout(() => {
                const event = new Event('scroll');
                window.dispatchEvent(event);
            }, 100);

        }


        // Close slider on Escape key
        document.addEventListener('keydown', function (event) {
            if (event.key === 'Escape') {
                closeEventSlider();
            }
        });



        function openSchoolIdSlider() {
            const slider = document.getElementById('eventSlider');
            const overlay = document.getElementById('sliderOverlay');
            const content = document.getElementById('sliderContent');
            const header = document.querySelector('.slider-header h2');

            // Update header for School ID System
            header.innerHTML = '<i class="fas fa-id-card me-3"></i>School ID System';
            header.classList.add('slider-title');

            // Load school-id-system.html content
            fetch('school-id-system.aspx')
                .then(response => response.text())
                .then(aspx => {
                    content.innerHTML = aspx;
                    slider.classList.add('active');
                    overlay.classList.add('active');
                    document.body.style.overflow = 'hidden';
                })
                .catch(error => {
                    console.error('Error loading school ID system content:', error);
                    content.innerHTML = '<p class="text-center text-danger">Error loading content. Please try again.</p>';
                    slider.classList.add('active');
                    overlay.classList.add('active');
                    document.body.style.overflow = 'hidden';
                });
            updateNavForSlider();
        }


        // waterworks slider
        function openWaterworksSlider() {
            const slider = document.getElementById('eventSlider');
            const overlay = document.getElementById('sliderOverlay');
            const content = document.getElementById('sliderContent');
            const header = document.querySelector('.slider-header h2');

            // Update header for Waterworks System
            header.innerHTML = '<i class="fas fa-tint me-3"></i>Waterworks Information System';
            header.classList.add('slider-title');

            // Load waterworks.html content
            fetch('waterworks.aspx')
                .then(response => response.text())
                .then(aspx => {
                    content.innerHTML = aspx;
                    slider.classList.add('active');
                    overlay.classList.add('active');
                    document.body.style.overflow = 'hidden';
                })
                .catch(error => {
                    console.error('Error loading waterworks content:', error);
                    content.innerHTML = '<p class="text-center text-danger">Error loading content. Please try again.</p>';
                    slider.classList.add('active');
                    overlay.classList.add('active');
                    document.body.style.overflow = 'hidden';
                });
            updateNavForSlider();
        }

        // school slider
        function openSchoolSlider() {
            const slider = document.getElementById('eventSlider');
            const overlay = document.getElementById('sliderOverlay');
            const content = document.getElementById('sliderContent');
            const header = document.querySelector('.slider-header h2');

            // Update header for Waterworks System
            header.innerHTML = '<i class="fas fa-graduation-cap me-3"></i>School Management System';
            header.classList.add('slider-title');

            // Load waterworks.html content
            fetch('school.aspx')
                .then(response => response.text())
                .then(aspx => {
                    content.innerHTML = aspx;
                    slider.classList.add('active');
                    overlay.classList.add('active');
                    document.body.style.overflow = 'hidden';
                })
                .catch(error => {
                    console.error('Error loading waterworks content:', error);
                    content.innerHTML = '<p class="text-center text-danger">Error loading content. Please try again.</p>';
                    slider.classList.add('active');
                    overlay.classList.add('active');
                    document.body.style.overflow = 'hidden';
                });
            updateNavForSlider();
        }


        function openCustomSlider() {
            const slider = document.getElementById('eventSlider');
            const overlay = document.getElementById('sliderOverlay');
            const content = document.getElementById('sliderContent');
            const header = document.querySelector('.slider-header h2');

            // Update header for Waterworks System
            header.innerHTML = '<i class="fas fa-code me-3"></i>Custom Software Development';
            header.classList.add('slider-title');

            // Load waterworks.html content
            fetch('custom.aspx')
                .then(response => response.text())
                .then(aspx => {
                    content.innerHTML = aspx;
                    slider.classList.add('active');
                    overlay.classList.add('active');
                    document.body.style.overflow = 'hidden';
                })
                .catch(error => {
                    console.error('Error loading waterworks content:', error);
                    content.innerHTML = '<p class="text-center text-danger">Error loading content. Please try again.</p>';
                    slider.classList.add('active');
                    overlay.classList.add('active');
                    document.body.style.overflow = 'hidden';
                });

            updateNavForSlider();
        }
        function openConsultSlider() {
            const slider = document.getElementById('eventSlider');
            const overlay = document.getElementById('sliderOverlay');
            const content = document.getElementById('sliderContent');
            const header = document.querySelector('.slider-header h2');

            // Update header for Waterworks System
            header.innerHTML = '<i class="fas fa-headset me-3"></i>IT Consulting & Support';
            header.classList.add('slider-title');

            // Load waterworks.html content
            fetch('consult.aspx')
                .then(response => response.text())
                .then(aspx => {
                    content.innerHTML = aspx;
                    slider.classList.add('active');
                    overlay.classList.add('active');
                    document.body.style.overflow = 'hidden';
                })
                .catch(error => {
                    console.error('Error loading waterworks content:', error);
                    content.innerHTML = '<p class="text-center text-danger">Error loading content. Please try again.</p>';
                    slider.classList.add('active');
                    overlay.classList.add('active');
                    document.body.style.overflow = 'hidden';
                });
            updateNavForSlider();
        }

    </script>
    <!-- DYNAMIC NAVBAR LOGO SWITCHING SCRIPT -->
    <script>
        // Dynamic Navbar and Logo Switching Script
        document.addEventListener('DOMContentLoaded', function () {
            const navbar = document.getElementById('mainNavbar');
            const logo = document.getElementById('navbarLogo');

            // Logo paths - Update these to match your actual file paths
            const logoDefault = 'public/img/logo.png';     // Transparent navbar logo
            const logoScrolled = 'public/img/logo2.png';   // Scrolled navbar logo

            let isScrolled = false;
            let ticking = false;

            // Function to check if we're on mobile/tablet
            function isMobileDevice() {
                return window.innerWidth <= 991; // Bootstrap's lg breakpoint
            }

            // Smooth logo transition function
            function switchLogo(newSrc) {
                if (logo.src.endsWith(newSrc.split('/').pop())) {
                    return; // Don't switch if it's already the correct logo
                }

                logo.style.opacity = '0';

                setTimeout(() => {
                    logo.src = newSrc;
                    logo.style.opacity = '1';
                }, 150);
            }

            // Scroll handler function
            function handleScroll() {
                const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
                const shouldBeScrolled = scrollTop > 50; // Trigger point - adjust as needed
                const isMobile = isMobileDevice();

                if (isMobile) {
                    // On mobile, always use logo2.png since navbar is always solid
                    navbar.classList.remove('navbar-transparent');
                    navbar.classList.add('navbar-scrolled');
                    switchLogo(logoScrolled);
                    isScrolled = true;
                } else {
                    // Desktop behavior
                    if (shouldBeScrolled && !isScrolled) {
                        // Switch to scrolled state
                        navbar.classList.remove('navbar-transparent');
                        navbar.classList.add('navbar-scrolled');
                        switchLogo(logoScrolled);
                        isScrolled = true;
                    } else if (!shouldBeScrolled && isScrolled) {
                        // Switch to transparent state
                        navbar.classList.remove('navbar-scrolled');
                        navbar.classList.add('navbar-transparent');
                        switchLogo(logoDefault);
                        isScrolled = false;
                    }
                }

                ticking = false;
            }

            // Optimized scroll event listener
            function onScroll() {
                if (!ticking) {
                    requestAnimationFrame(handleScroll);
                    ticking = true;
                }
            }

            // Handle window resize
            function onResize() {
                // Re-evaluate on resize to handle orientation changes
                handleScroll();
            }

            // Add event listeners
            window.addEventListener('scroll', onScroll, { passive: true });
            window.addEventListener('resize', onResize);

            // Initialize navbar state
            handleScroll();
        });
    </script>
    <script>
        // STABLE WATER CAROUSEL - SLOWER & MORE READABLE
        let currentStableSlideIndex = 0;
        let stableAutoSlideInterval;

        document.addEventListener('DOMContentLoaded', function () {
            initializeStableCarousel();
        });

        function initializeStableCarousel() {
            const slides = document.querySelectorAll('.offer-section .stable-slide');
            const dots = document.querySelectorAll('.offer-section .stable-dot');

            if (slides.length > 0) {
                showStableSlide(currentStableSlideIndex);
                startStableAutoSlide();

                // Pause on hover
                const carousel = document.querySelector('.offer-section .stable-water-carousel');
                if (carousel) {
                    carousel.addEventListener('mouseenter', pauseStableAutoSlide);
                    carousel.addEventListener('mouseleave', startStableAutoSlide);
                }
            }
        }

        function showStableSlide(index) {
            const slides = document.querySelectorAll('.offer-section .stable-slide');
            const dots = document.querySelectorAll('.offer-section .stable-dot');

            slides.forEach(slide => slide.classList.remove('active'));
            dots.forEach(dot => dot.classList.remove('active'));

            if (slides[index] && dots[index]) {
                slides[index].classList.add('active');
                dots[index].classList.add('active');
            }
        }

        function changeStableSlide(direction) {
            const slides = document.querySelectorAll('.offer-section .stable-slide');
            currentStableSlideIndex += direction;

            if (currentStableSlideIndex >= slides.length) {
                currentStableSlideIndex = 0;
            } else if (currentStableSlideIndex < 0) {
                currentStableSlideIndex = slides.length - 1;
            }

            showStableSlide(currentStableSlideIndex);
            resetStableAutoSlide();
        }

        function currentStableSlide(index) {
            currentStableSlideIndex = index - 1;
            showStableSlide(currentStableSlideIndex);
            resetStableAutoSlide();
        }

        function startStableAutoSlide() {
            const slides = document.querySelectorAll('.offer-section .stable-slide');
            if (slides.length > 1) {
                // SLOWER SPEED - 7 SECONDS FOR BETTER READABILITY
                stableAutoSlideInterval = setInterval(() => {
                    changeStableSlide(1);
                }, 7000);
            }
        }

        function pauseStableAutoSlide() {
            clearInterval(stableAutoSlideInterval);
        }

        function resetStableAutoSlide() {
            clearInterval(stableAutoSlideInterval);
            startStableAutoSlide();
        }

        // Touch support for mobile
        let stableStartX = 0;
        let stableEndX = 0;

        document.addEventListener('DOMContentLoaded', function () {
            const carousel = document.querySelector('.offer-section .stable-water-carousel');
            if (carousel) {
                carousel.addEventListener('touchstart', (e) => {
                    stableStartX = e.touches[0].clientX;
                });

                carousel.addEventListener('touchend', (e) => {
                    stableEndX = e.changedTouches[0].clientX;
                    handleStableSwipe();
                });
            }
        });

        function handleStableSwipe() {
            const swipeThreshold = 50;
            const diff = stableStartX - stableEndX;

            if (Math.abs(diff) > swipeThreshold) {
                if (diff > 0) {
                    changeStableSlide(1);
                } else {
                    changeStableSlide(-1);
                }
            }
        }
    </script>
</body>
</html>
