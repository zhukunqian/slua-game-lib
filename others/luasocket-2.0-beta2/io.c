/*=========================================================================*\
* Input/Output abstraction
* LuaSocket toolkit
*
* RCS ID: $Id: io.c,v 1.5 2004/07/15 06:11:53 diego Exp $
\*=========================================================================*/
#include "io.h"

/*=========================================================================*\
* Exported functions
\*=========================================================================*/
/*-------------------------------------------------------------------------*\
* Initializes C structure
\*-------------------------------------------------------------------------*/
void io_init(p_io io, p_send send, p_recv recv, p_error error, void *ctx) {
    io->send = send;
    io->recv = recv;
    io->error = error;
    io->ctx = ctx;
}

/*-------------------------------------------------------------------------*\
* I/O error strings
\*-------------------------------------------------------------------------*/
const char *io_strerror(int err) {
    switch (err) {
        case IO_DONE: return NULL;
        case IO_CLOSED: return "closed";
        case IO_TIMEOUT: return "timeout";
        case IO_CLIPPED: return "clipped";
        default: return "unknown error"; 
    }
}
