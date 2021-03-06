
! * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
!   Copyright by The HDF Group.                                               *
!   Copyright by the Board of Trustees of the University of Illinois.         *
!   All rights reserved.                                                      *
!                                                                             *
!   This file is part of HDF5.  The full HDF5 copyright notice, including     *
!   terms governing use, modification, and redistribution, is contained in    *
!   the files COPYING and Copyright.html.  COPYING can be found at the root   *
!   of the source code distribution tree; Copyright.html can be found at the  *
!   root level of an installed copy of the electronic HDF5 document set and   *
!   is linked from the top-level documents page.  It can also be found at     *
!   http://hdfgroup.org/HDF5/doc/Copyright.html.  If you do not have          *
!   access to either file, you may request a copy from help@hdfgroup.org.     *
! * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
!
!
!  This file contains HDF5 Fortran90 type definitions
!
       MODULE H5FORTRAN_TYPES
         !
         !  HDF5 integers 
         !
         !  Each of the arguments of SELECTED_INT_KIND function should be 
         !  determined by configure. 
         !  R_LARGE is the number of digits for the biggest integer supported.
         !  R_INTEGER is the number of digits in INTEGER  
         !  For example: 
         !  On 64 bit machine ( DEC ALPHA) R_LARGE = 18 and R_INTEGER = 9
         !  On 32 bit machines ( Sparc Solaris ) R_LARGE = 9 and R_INTEGER = 9 
         !   
         INTEGER, PARAMETER :: R_LARGE = 18
         INTEGER, PARAMETER :: R_INTEGER = 9
         INTEGER, PARAMETER :: HADDR_T  = SELECTED_INT_KIND(R_LARGE)
         INTEGER, PARAMETER :: HSIZE_T  = SELECTED_INT_KIND(R_LARGE)
         INTEGER, PARAMETER :: HSSIZE_T = SELECTED_INT_KIND(R_LARGE)
         INTEGER, PARAMETER :: HID_T    = SELECTED_INT_KIND(R_INTEGER)
         INTEGER, PARAMETER :: SIZE_T   = SELECTED_INT_KIND(R_INTEGER)

         !
         ! Some HDF5 FORTARN90 default values ( here for now 8/5/99 EIP )
         !

         INTEGER(SIZE_T), PARAMETER :: OBJECT_NAMELEN_DEFAULT_F = -1

       END MODULE H5FORTRAN_TYPES                                   
