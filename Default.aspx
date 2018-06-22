<%@ Page Title="" Language="C#" MasterPageFile="~/Vadim/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="index_slider">
      <div class="image">
        <img src="upload/Images/1.jpg" alt="">
      </div>
      <div class="inset hide_me">
        <div>
          <div>
            <h2>BUSES</h2>
            <p>Ready to execute any order of Customer with no regard to</p>               
          </div>
        </div>
      </div>
      <div class="tabs">
        <div>
          <a href="#" class="active" data-image="upload/Images/1.jpg" data-name="" data-text="">
            <strong class="car"></strong>
            <span>Sedan</span>
          </a>
          <a href="#" data-image="upload/Images/2.jpg" data-name="BUSES" data-text="Ready to execute any order of Customer with no regard to">
            <strong class="bus"></strong>
            <span>Buses</span>
          </a>
          <a href="#" data-image="upload/Images/3.jpg" data-name="SUV & Crossovers " data-text="All Vehicles apply to international HSE standards, equipped will <br>three point sit belts, Safety tools, GPS, First Aid kits, Extinguishers, <br>and all other staff required by Safety and for the comfort of passengers">
            <strong class="crossover"></strong>
            <span>SUV &amp; Crossovers</span>
          </a>
          <a href="#" data-image="upload/Images/4.jpg" data-name="Heavy <br>Equipment" data-text="Professional  team of Drivers trained according international  <br>standards with valid BP’s Permit to Drive">
            <strong class="heavy"></strong>
            <span>Heavy Equipment</span>
          </a>
        </div>
      </div>
    </div>

  <!-- INDEX SLIDER END -->


  <!-- INDEX ARTICLE BEGIN -->

    <div class="index_article">
      <div>
        <div class="inset">
          <h2>WELCOME TO OUR WEBSITE!</h2>
          <div class="text">
            <asp:Literal ID="welcome_lit" runat="server"></asp:Literal>
          </div>
         
        </div>
        <div class="image">
          <img src="upload/Images/10.jpg" alt="">
        </div>

      </div>
    </div>

  <!-- INDEX ARTICLE END -->


  <!-- INDEX ICONS BEGIN -->

    <div class="index_icons">
      <div>
        <div>
          <div class="icon">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" width="66" height="64" viewBox="0 0 66 64" id="icon_5aea936ce07c5">
              <defs>
                <style>
                  .cls-1 {
                    stroke-linecap: round;
                    stroke-width: 2px;
                    fill: none;
                    fill-rule: evenodd;
                  }
                </style>
              </defs>
              <path d="M20.000,3.000 L29.000,3.000 C29.552,3.000 30.000,3.448 30.000,4.000 L30.000,40.000 C30.000,40.552 29.552,41.000 29.000,41.000 L2.000,41.000 C1.448,41.000 1.000,40.552 1.000,40.000 L1.000,4.000 C1.000,3.448 1.448,3.000 2.000,3.000 L11.000,3.000 " class="cls-1" style="stroke-dasharray: 124, 126; stroke-dashoffset: 0;"></path>
              <path d="M30.000,25.000 L64.000,25.000 C64.552,25.000 65.000,25.448 65.000,26.000 L65.000,62.000 C65.000,62.552 64.552,63.000 64.000,63.000 L21.000,63.000 C20.448,63.000 20.000,62.552 20.000,62.000 L20.000,41.000 " class="cls-1" style="stroke-dasharray: 139, 141; stroke-dashoffset: 0;"></path>
              <path d="M35.000,25.000 L35.000,49.500 L42.500,46.500 L50.000,49.500 L50.000,25.000 " class="cls-1" style="stroke-dasharray: 66, 68; stroke-dashoffset: 0;"></path>
              <path d="M5.000,8.000 L26.000,8.000 " class="cls-1" style="stroke-dasharray: 21, 23; stroke-dashoffset: 0;"></path>
              <path d="M9.000,26.000 L13.000,30.000 L22.000,21.000 " class="cls-1" style="stroke-dasharray: 19, 21; stroke-dashoffset: 0;"></path>
              <path d="M10.000,6.500 C10.000,3.462 12.462,1.000 15.500,1.000 C18.538,1.000 21.000,3.462 21.000,6.500 " class="cls-1" style="stroke-dasharray: 18, 20; stroke-dashoffset: 0;"></path>
            </svg>
          </div>
          <div class="info">
            <strong>160</strong>
            <span>Projects Done</span>
          </div>
        </div>
          <div>
          <div class="icon">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" width="64" height="68" viewBox="0 0 64 68" id="icon_5ae9fc31c7dbe">
              <defs>
                <style>
                  .cls-1, .cls-2 {
                    stroke-linecap: round;
                    stroke-width: 2px;
                    fill: none;
                  }

                  .cls-1 {
                    fill-rule: evenodd;
                  }
                </style>
              </defs>
              <g>
                <path d="M26.000,1.000 L33.000,8.000 L26.000,15.000 " class="cls-1" style="stroke-dasharray: 20, 22; stroke-dashoffset: 0;"></path>
                <path d="M33.000,8.000 C33.000,8.000 1.000,6.798 1.000,37.000 C1.000,64.955 38.000,67.000 38.000,67.000 " class="cls-1" style="stroke-dasharray: 102, 104; stroke-dashoffset: 0;"></path>
                <path class="cls-2" d="M13,42A25,25 0,1,1 63,42A25,25 0,1,1 13,42" style="stroke-dasharray: 158, 160; stroke-dashoffset: 0;"></path>
                <path d="M13.000,42.000 L63.000,42.000 " class="cls-1" style="stroke-dasharray: 50, 52; stroke-dashoffset: 0;"></path>
                <path d="M38.000,17.000 C44.627,17.000 50.000,28.193 50.000,42.000 C50.000,55.807 44.627,67.000 38.000,67.000 C31.373,67.000 26.000,55.807 26.000,42.000 C26.000,28.193 31.373,17.000 38.000,17.000 Z" class="cls-1" style="stroke-dasharray: 120, 122; stroke-dashoffset: 0;"></path>
                <path d="M20.000,25.000 C20.000,25.000 28.090,32.000 38.000,32.000 C47.973,32.000 55.000,25.000 55.000,25.000 " class="cls-1" style="stroke-dasharray: 39, 41; stroke-dashoffset: 0;"></path>
                <path d="M20.030,58.972 C20.030,58.972 28.113,51.996 38.015,51.996 C47.980,51.996 55.001,58.972 55.001,58.972 " class="cls-1" style="stroke-dasharray: 39, 41; stroke-dashoffset: 0;"></path>
              </g>
            </svg>
          </div>
          <div class="info">
            <strong>100</strong>
            <span>Local Clients</span>
          </div>
        </div>
        <div>
          <div class="icon">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" width="52" height="67" viewBox="0 0 52 67" id="icon_5ae9fc31c8194">
              <defs>
                <style>
                  .cls-1 {
                    stroke-linecap: round;
                    stroke-width: 2px;
                    fill: none;
                    fill-rule: evenodd;
                  }
                </style>
              </defs>
              <g>
                <path d="M6.000,45.000 L5.000,45.000 C2.791,45.000 1.000,43.209 1.000,41.000 L1.000,5.000 C1.000,2.791 2.791,1.000 5.000,1.000 L47.000,1.000 C49.209,1.000 51.000,2.791 51.000,5.000 L51.000,41.000 C51.000,43.209 49.209,45.000 47.000,45.000 L46.000,45.000 " class="cls-1" style="stroke-dasharray: 142, 144; stroke-dashoffset: 0;"></path>
                <path d="M6.000,51.000 L6.000,17.000 C6.000,16.448 6.448,16.000 7.000,16.000 L45.000,16.000 C45.552,16.000 46.000,16.448 46.000,17.000 L46.000,51.000 " class="cls-1" style="stroke-dasharray: 110, 112; stroke-dashoffset: 0;"></path>
                <path d="M4.000,51.000 L48.000,51.000 C48.552,51.000 49.000,51.448 49.000,52.000 L49.000,56.000 C49.000,56.552 48.552,57.000 48.000,57.000 L4.000,57.000 C3.448,57.000 3.000,56.552 3.000,56.000 L3.000,52.000 C3.000,51.448 3.448,51.000 4.000,51.000 Z" class="cls-1" style="stroke-dasharray: 103, 105; stroke-dashoffset: 0;"></path>
                <path d="M44.000,66.000 L39.000,66.000 C38.448,66.000 38.000,65.552 38.000,65.000 L38.000,57.000 L45.000,57.000 L45.000,65.000 C45.000,65.552 44.552,66.000 44.000,66.000 ZM13.000,66.000 L8.000,66.000 C7.448,66.000 7.000,65.552 7.000,65.000 L7.000,57.000 L14.000,57.000 L14.000,65.000 C14.000,65.552 13.552,66.000 13.000,66.000 Z" class="cls-1" style="stroke-dasharray: 63, 65; stroke-dashoffset: 0;"></path>
                <path d="M6.000,34.000 L46.000,34.000 " class="cls-1" style="stroke-dasharray: 40, 42; stroke-dashoffset: 0;"></path>
                <path d="M38.500,45.000 C37.119,45.000 36.000,43.881 36.000,42.500 C36.000,41.119 37.119,40.000 38.500,40.000 C39.881,40.000 41.000,41.119 41.000,42.500 C41.000,43.881 39.881,45.000 38.500,45.000 ZM13.500,45.000 C12.119,45.000 11.000,43.881 11.000,42.500 C11.000,41.119 12.119,40.000 13.500,40.000 C14.881,40.000 16.000,41.119 16.000,42.500 C16.000,43.881 14.881,45.000 13.500,45.000 Z" class="cls-1" style="stroke-dasharray: 32, 34; stroke-dashoffset: 0;"></path>
              </g>
            </svg>
          </div>
          <div class="info">
            <strong>85</strong>
            <span>Owned Vehicles</span>
          </div>
        </div>
        <div>
          <div class="icon">
            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" width="68" height="67" viewBox="0 0 68 67" id="icon_5ae9fc31c85c0">
              <defs>
                <style>
                  .cls-1 {
                    stroke-linecap: round;
                    stroke-width: 2px;
                    fill: none;
                    fill-rule: evenodd;
                  }
                </style>
              </defs>
              <g>
                <path d="M44.966,14.087 C50.985,17.780 55.000,24.421 55.000,32.000 M42.976,50.990 C40.255,52.279 37.212,53.000 34.000,53.000 C30.795,53.000 27.758,52.282 25.041,50.999 M13.000,32.000 C13.000,24.414 17.022,17.768 23.050,14.077 " class="cls-1" style="stroke-dasharray: 62, 64; stroke-dashoffset: 0;"></path>
                <path d="M58.000,55.000 C58.341,57.861 60.000,58.000 60.000,58.000 C60.000,58.000 67.000,59.006 67.000,63.000 L67.000,65.000 C67.000,65.552 66.552,66.000 66.000,66.000 L42.000,66.000 C41.448,66.000 41.000,65.552 41.000,65.000 L41.000,63.000 C41.000,59.521 48.000,58.000 48.000,58.000 C48.000,58.000 49.698,57.821 50.000,55.000 " class="cls-1" style="stroke-dasharray: 58, 60; stroke-dashoffset: 0;"></path>
                <path d="M60.916,45.022 C60.971,45.504 61.000,45.997 61.000,46.500 C61.000,51.747 57.866,56.000 54.000,56.000 C50.134,56.000 47.000,51.747 47.000,46.500 C47.000,45.787 47.058,45.093 47.168,44.425 " class="cls-1" style="stroke-dasharray: 30, 32; stroke-dashoffset: 0;"></path>
                <path d="M46.313,41.000 C46.313,43.665 47.000,45.000 47.000,45.000 C47.000,45.000 47.177,43.000 49.000,43.000 C60.535,43.000 61.000,46.000 61.000,46.000 C61.000,46.000 61.500,43.239 61.500,42.000 C61.500,37.992 61.000,37.000 61.000,37.000 C61.000,37.000 59.906,37.250 59.000,37.250 C58.094,37.250 56.312,36.000 53.000,36.000 C49.687,36.000 46.313,38.335 46.313,41.000 Z" class="cls-1" style="stroke-dasharray: 47, 49; stroke-dashoffset: 0;"></path>
                <path d="M60.000,58.000 C60.000,60.209 57.314,62.000 54.000,62.000 C50.686,62.000 48.000,60.209 48.000,58.000 " class="cls-1" style="stroke-dasharray: 16, 18; stroke-dashoffset: 0;"></path>
                <path d="M18.000,55.000 C18.341,57.861 20.000,58.000 20.000,58.000 C20.000,58.000 27.000,59.006 27.000,63.000 L27.000,65.000 C27.000,65.552 26.552,66.000 26.000,66.000 L2.000,66.000 C1.448,66.000 1.000,65.552 1.000,65.000 L1.000,63.000 C1.000,59.521 8.000,58.000 8.000,58.000 C8.000,58.000 9.698,57.821 10.000,55.000 " class="cls-1" style="stroke-dasharray: 58, 60; stroke-dashoffset: 0;"></path>
                <path d="M20.916,45.022 C20.971,45.504 21.000,45.997 21.000,46.500 C21.000,51.747 17.866,56.000 14.000,56.000 C10.134,56.000 7.000,51.747 7.000,46.500 C7.000,45.787 7.058,45.093 7.168,44.425 " class="cls-1" style="stroke-dasharray: 30, 32; stroke-dashoffset: 0;"></path>
                <path d="M6.313,41.000 C6.313,43.665 7.000,45.000 7.000,45.000 C7.000,45.000 7.177,43.000 9.000,43.000 C20.535,43.000 21.000,46.000 21.000,46.000 C21.000,46.000 21.500,43.239 21.500,42.000 C21.500,37.992 21.000,37.000 21.000,37.000 C21.000,37.000 19.906,37.250 19.000,37.250 C18.094,37.250 16.312,36.000 13.000,36.000 C9.687,36.000 6.313,38.335 6.313,41.000 Z" class="cls-1" style="stroke-dasharray: 47, 49; stroke-dashoffset: 0;"></path>
                <path d="M20.000,58.000 C20.000,60.209 17.314,62.000 14.000,62.000 C10.686,62.000 8.000,60.209 8.000,58.000 " class="cls-1" style="stroke-dasharray: 16, 18; stroke-dashoffset: 0;"></path>
                <path d="M38.000,20.000 C38.341,22.861 40.000,23.000 40.000,23.000 C40.000,23.000 47.000,24.006 47.000,28.000 L47.000,30.000 C47.000,30.552 46.552,31.000 46.000,31.000 L22.000,31.000 C21.448,31.000 21.000,30.552 21.000,30.000 L21.000,28.000 C21.000,24.521 28.000,23.000 28.000,23.000 C28.000,23.000 29.698,22.821 30.000,20.000 " class="cls-1" style="stroke-dasharray: 58, 60; stroke-dashoffset: 0;"></path>
                <path d="M40.916,10.022 C40.971,10.504 41.000,10.997 41.000,11.500 C41.000,16.747 37.866,21.000 34.000,21.000 C30.134,21.000 27.000,16.747 27.000,11.500 C27.000,10.787 27.058,10.093 27.168,9.425 " class="cls-1" style="stroke-dasharray: 30, 32; stroke-dashoffset: 0;"></path>
                <path d="M26.313,6.000 C26.313,8.665 27.000,10.000 27.000,10.000 C27.000,10.000 27.177,8.000 29.000,8.000 C40.535,8.000 41.000,11.000 41.000,11.000 C41.000,11.000 41.500,8.239 41.500,7.000 C41.500,2.992 41.000,2.000 41.000,2.000 C41.000,2.000 39.906,2.250 39.000,2.250 C38.094,2.250 36.312,1.000 33.000,1.000 C29.687,1.000 26.313,3.335 26.313,6.000 Z" class="cls-1" style="stroke-dasharray: 47, 49; stroke-dashoffset: 0;"></path>
                <path d="M40.000,23.000 C40.000,25.209 37.314,27.000 34.000,27.000 C30.686,27.000 28.000,25.209 28.000,23.000 " class="cls-1" style="stroke-dasharray: 16, 18; stroke-dashoffset: 0;"></path>
              </g>
            </svg>
          </div>
          <div class="info">
            <strong>40</strong>
            <span>People in Team</span>
          </div>
        </div>
      </div>
    </div>

  <!-- INDEX ICONS END -->


  <!-- INDEX GRID BEGIN -->

    <div class="index_grid">
      <div>
       
       <asp:Literal ID="figure_lit" runat="server"></asp:Literal>
             
      </div>
    </div>

  <!-- INDEX GRID END -->


  <!-- INDEX REQUEST BEGIN -->

    <div class="index_request">
      <div>
        <div class="image"><img src="img/logo.png" alt=""></div>
        <div class="request_form">
          <h2>REQUEST A FREE QUOTE</h2>
          <div class="form">
            <form action="simple.php">
              <div>
                <ul>
                  <li>
                    <input type="text" placeholder="Name and Surname">
                  </li>
                  <li>
                    <select name="" id="">
                      <option value="0">Transportation service</option>
                      <option value="1">Transportation service</option>
                      <option value="2">Transportation service</option>
                      <option value="3">Transportation service</option>
                      <option value="4">Transportation service</option>
                    </select>
                  </li>
                  <li>
                    <input type="text" placeholder="Source address">
                  </li>
                  <li>
                    <input type="text" placeholder="Destination address">
                  </li>
                  <li>
                    <input type="text" placeholder="Phone number">
                  </li>
                </ul>                
              </div>
              <div>
                <ul>
                  <li>
                    <input type="text" placeholder="Email">
                  </li>
                  <li>
                    <textarea name="" id="" placeholder="Message"></textarea>
                  </li>
                  <li>
                    <button type="submit">Submit</button>
                  </li>
                </ul>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  <!-- INDEX REQUEST END -->

    <div id="single_map" data-latitude="40.373461" data-longitude="49.833444"></div>

  <!-- FOOTER BEGIN -->

    <footer id="footer">
      <div class="first">
        <div>
          <div class="footer_logo">
            <a href="#"></a>
            <span>We stay professional, pragmatic and find the best solution !</span>
          </div>
          <nav class="footer_nav">
            <div>
              <h3>FLEET</h3>
              <ul>
                <li><a href="#"><span>Sedan</span></a></li>
                <li><a href="#"><span>Heavy Equipment</span></a></li>
                <li><a href="#"><span>SUV &amp; Crossovers</span></a></li>
                <li><a href="#"><span>Buses</span></a></li>
              </ul>
            </div>
            <div>
              <h3>PAGES</h3>
              <ul>
                <li><a href="#"><span>All Services</span></a></li>
                <li><a href="#"><span>Apply for Vacancies</span></a></li>
                <li><a href="#"><span>About Us</span></a></li>
                <li><a href="#"><span>Contacts</span></a></li>
              </ul>
            </div>
          </nav>
          <div class="footer_search">
            <h3>SEARCH</h3>
            <div class="form">
              <form action="simple.php">
                <input type="text" placeholder="Search...">
                <button type="submit"></button>
              </form>
            </div>
          </div>
        </div>
      </div>
      <div class="second">
        <div>
          <div class="copyright">
            <span>Copyright © 2017 All rights reserved</span>
          </div>
          <div class="social_icons">
            <a href="#"><img src="img/facebook_icon.svg" alt=""></a>
            <a href="#"><img src="img/skype_icon.svg" alt=""></a>
            <a href="#"><img src="img/telegram_icon.svg" alt=""></a>
            <a href="#"><img src="img/twitter_icon.svg" alt=""></a>
            <a href="#"><img src="img/youtube_icon.svg" alt=""></a>
          </div>
        </div>
      </div>
    </footer>

  <!-- FOOTER END -->


</div>



 
</asp:Content>

