/**
 * This module contains functions related to cairo's PostScript
 * functionality.
 *
 * This file is automatically generated; do not directly modify.
 *
 * Authors: Daniel Keep
 * Copyright: 2007, Daniel Keep
 * License: BSD v2 (http://www.opensource.org/licenses/bsd-license.php).
 */
/*
 * Copyright © 2007 Daniel Keep
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 *
 * * Redistributions of source code must retain the above copyright
 *   notice, this list of conditions and the following disclaimer.
 *
 * * Redistributions in binary form must reproduce the above copyright
 *   notice, this list of conditions and the following disclaimer in the
 *   documentation and/or other materials provided with the distribution.
 *
 * * Neither the name of this software, nor the names of its contributors
 *   may be used to endorse or promote products derived from this software
 *   without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
module cairo.ps.cairofuncs_ps;

version( cairo_1_4 ) { version = cairo_1_2; }

version( cairo_1_2 ) {}
else
{
    pragma(msg, "cairo PostScript support requires cairo 1.2 or higher.");
    static assert(false, "cairo 1.2+ support not enabled.");
}

private
{
    import cairo.loader;
    import cairo.ps.cairotypes_ps;
}

package void cairo_ps_loadprocs(SharedLib lib)
{
    // cairo functions
    //Name = cast(pfName)getProc(lib, "Name");
    version( cairo_1_2 )
    {
        cairo_ps_surface_create = cast(pf_cairo_ps_surface_create)getProc(lib, "cairo_ps_surface_create");
        cairo_ps_surface_set_size = cast(pf_cairo_ps_surface_set_size)getProc(lib, "cairo_ps_surface_set_size");
        cairo_ps_surface_create_for_stream = cast(pf_cairo_ps_surface_create_for_stream)getProc(lib, "cairo_ps_surface_create_for_stream");
        cairo_ps_surface_dsc_comment = cast(pf_cairo_ps_surface_dsc_comment)getProc(lib, "cairo_ps_surface_dsc_comment");
        cairo_ps_surface_dsc_begin_page_setup = cast(pf_cairo_ps_surface_dsc_begin_page_setup)getProc(lib, "cairo_ps_surface_dsc_begin_page_setup");
        cairo_ps_surface_dsc_begin_setup = cast(pf_cairo_ps_surface_dsc_begin_setup)getProc(lib, "cairo_ps_surface_dsc_begin_setup");
    }
}

// C calling convention for BOTH linux and Windows
extern(C):

//typedef Tr function( Ta... ) pfName;
version( cairo_1_2 )
{
    typedef cairo_surface_t* function(char* filename, double width_in_points, double height_in_points) pf_cairo_ps_surface_create;
    typedef void function(cairo_surface_t* surface, double width_in_points, double height_in_points) pf_cairo_ps_surface_set_size;
    typedef cairo_surface_t* function(cairo_write_func_t write_func, void* closure, double width_in_points, double height_in_points) pf_cairo_ps_surface_create_for_stream;
    typedef void function(cairo_surface_t* surface, char* comment) pf_cairo_ps_surface_dsc_comment;
    typedef void function(cairo_surface_t* surface) pf_cairo_ps_surface_dsc_begin_page_setup;
    typedef void function(cairo_surface_t* surface) pf_cairo_ps_surface_dsc_begin_setup;
}

//pfName Name;
version( cairo_1_2 )
{
    pf_cairo_ps_surface_create cairo_ps_surface_create;
    pf_cairo_ps_surface_set_size cairo_ps_surface_set_size;
    pf_cairo_ps_surface_create_for_stream cairo_ps_surface_create_for_stream;
    pf_cairo_ps_surface_dsc_comment cairo_ps_surface_dsc_comment;
    pf_cairo_ps_surface_dsc_begin_page_setup cairo_ps_surface_dsc_begin_page_setup;
    pf_cairo_ps_surface_dsc_begin_setup cairo_ps_surface_dsc_begin_setup;
}

