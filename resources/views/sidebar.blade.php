<section>
   <aside id="leftsidebar" class="sidebar">
      <div class="user-info">
         <div class="image">
            <img src="{{ asset('assets/images/user.png') }}" width="48" height="48" alt="User" />
         </div>

         <div class="info-container">
            <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Name User</div>
            <div class="email">email.@gmail.com</div>

            <div class="btn-group user-helper-dropdown">
               <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>

               <ul class="dropdown-menu pull-right">
                  <li>
                     <a href="javascript:void(0);">
                        <i class="material-icons">person</i>
                        Profile
                     </a>
                  </li>

                  <li role="separator" class="divider"></li>

                  <li>
                     <a href="javascript:void(0);">
                        <i class="material-icons">input</i>
                        Sign Out
                     </a>
                  </li>
               </ul>
            </div>
         </div>
      </div>

      <div class="menu">
         <ul class="list">
            <li class="{{ isCurrentPage('/') }}">
               <a href="{{ url('/') }}">
                  <i class="fa fa-home"></i>
                  <span>Dasboard</span>
               </a>
            </li>

            <li class="{{ isCurrentPage(array('bidang', 'company', 'jurusan', 'guru')) }}">
               <a href="javascript:;" class="menu-toggle">
                  <i class="fa fa-server"></i>
                  <span>Master Data</span>
               </a>

               <ul class="ml-menu">
                  <li class="{{ isCurrentPage('bidang') }}">
                     <a href="{{ url('bidang') }}">Master Bidang</a>
                  </li>

                  <li class="{{ isCurrentPage('company') }}">
                     <a href="{{ url('company') }}">Master Perusahaan</a>
                  </li>

                  <li class="{{ isCurrentPage('jurusan') }}">
                     <a href="{{ url('jurusan') }}">Master Jurusan</a>
                  </li>

                  <li class="{{ isCurrentPage('guru') }}">
                     <a href="{{ url('guru') }}">Master Guru</a>
                  </li>
               </ul>
            </li>
         </ul>
      </div>

      <div class="legal">
         <div class="copyright">
            &copy; {{ date('Y') }} SKARIGA. All Rights Reserved</a>.
         </div>

         <div class="version">
            <b>Version: </b> 1.0.0-beta
         </div>
      </div>
   </aside>
</section>