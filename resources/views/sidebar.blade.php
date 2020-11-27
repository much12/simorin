<section>
   <aside id="leftsidebar" class="sidebar">
      <div class="user-info">
         <div class="image">
            <img src="{{ asset('assets/images/user.png') }}" width="35" height="35" alt="User" />
         </div>

         <div class="info-container">
            <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{ Session::get('nama') }}</div>
            <div class="email">{{ Session::get('email') }}</div>

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
                     <a href="{{ url('logout') }}">
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

            <li class="{{ isCurrentPage('/jurnal') }}">
               <a href="{{ url('/jurnal') }}">
                  <i class="fa fa-clipboard"></i>
                  <span>Jurnal</span>
               </a>
            </li>

            <li class="{{ isCurrentPage('/absensi') }}">
               <a href="{{ url('/absensi') }}">
                  <i class="fa fa-clipboard"></i>
                  <span>Absensi</span>
               </a>
            </li>

            <li class="">
               <a href="#">
                  <i class="fa fa-book-reader"></i>
                  <span>Evaluasi Kunjungan</span>
               </a>
            </li>

            <li class="{{ isCurrentPage('/jadwal') }}">
               <a href="{{ url('/jadwal') }}">
                  <i class="fa fa-clipboard-list"></i>
                  <span>Jadwal</span>
               </a>
            </li>

            @if(isAdmin())
            <li class="{{ isCurrentPage(array('bidang', 'company', 'jurusan', 'guru', 'pembimbing_sekolah', 'siswa', 'pembimbing_perusahaan', 'kategori', 'admin')) }}">
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

                  <li class="{{ isCurrentPage('pembimbing_sekolah') }}">
                     <a href="{{ url('pembimbing_sekolah') }}">Master Pembimbing Sekolah</a>
                  </li>

                  <li class="{{ isCurrentPage('siswa') }}">
                     <a href="{{ url('siswa') }}">Master Siswa</a>
                  </li>

                  <li class="{{ isCurrentPage('admin') }}">
                     <a href="{{ url('admin') }}">Master Admin</a>
                  </li>

                  <li class="{{ isCurrentPage('kategori') }}">
                     <a href="{{ url('kategori') }}">Master Kategori</a>
                  </li>
               </ul>
            </li>
            @endif
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