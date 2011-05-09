/* Converted to D from ./jack/midiport.h by htod */
module jack.midiport;
/*
    Copyright (C) 2004 Ian Esten
    
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation; either version 2.1 of the License, or
    (at your option) any later version.
    
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Lesser General Public License for more details.
    
    You should have received a copy of the GNU Lesser General Public License
    along with this program; if not, write to the Free Software 
    Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.

*/


//C     #ifndef __JACK_MIDIPORT_H
//C     #define __JACK_MIDIPORT_H

//C     #ifdef __cplusplus
//C     extern "C" {
//C     #endif
	
//C     #include <jack/types.h>
import jack.types;
//#include <stdlib.h>
//C     #include <jack/weakmacros.h>
//import std.c.weakmacros;
	
/** Type for raw event data contained in @ref jack_midi_event_t. */
//C     typedef unsigned char jack_midi_data_t;
extern (C):
alias ubyte jack_midi_data_t;


/** A Jack MIDI event. */
//C     typedef struct _jack_midi_event
//C     {
//C     	jack_nframes_t    time;   /**< Sample index at which event is valid */
	//size_t            size;   /**< Number of bytes of data in \a buffer */
//C     	int size;
//C     	jack_midi_data_t *buffer; /**< Raw MIDI data */
//C     } jack_midi_event_t;
struct _jack_midi_event
{
    jack_nframes_t time;
    size_t size;
    jack_midi_data_t *buffer;
}
alias _jack_midi_event jack_midi_event_t;


/**
 * @defgroup MIDIAPI Reading and writing MIDI data 
 * @{
 */

/** Get number of events in a port buffer.
 *
 * @param port_buffer Port buffer from which to retrieve event.
 * @return number of events inside @a port_buffer
 */
//C     jack_nframes_t
//C     jack_midi_get_event_count(void* port_buffer) JACK_OPTIONAL_WEAK_EXPORT;
jack_nframes_t  jack_midi_get_event_count(void *port_buffer);


/** Get a MIDI event from an event port buffer.
 * 
 * Jack MIDI is normalised, the MIDI event returned by this function is
 * guaranteed to be a complete MIDI event (the status byte will always be
 * present, and no realtime events will interspered with the event).
 *
 * @param event Event structure to store retrieved event in.
 * @param port_buffer Port buffer from which to retrieve event.
 * @param event_index Index of event to retrieve.
 * @return 0 on success, ENODATA if buffer is empty.
 */
//C     int
//C     jack_midi_event_get(jack_midi_event_t *event,
//C                         void              *port_buffer,
//C                         jack_nframes_t     event_index) JACK_OPTIONAL_WEAK_EXPORT;
int  jack_midi_event_get(jack_midi_event_t *event, void *port_buffer, jack_nframes_t event_index);


/** Clear an event buffer.
 * 
 * This should be called at the beginning of each process cycle before calling
 * @ref jack_midi_event_reserve or @ref jack_midi_event_write. This
 * function may not be called on an input port's buffer.
 *
 * @param port_buffer Port buffer to clear (must be an output port buffer).
 */
//C     void
//C     jack_midi_clear_buffer(void *port_buffer) JACK_OPTIONAL_WEAK_EXPORT;
void  jack_midi_clear_buffer(void *port_buffer);


/** Get the size of the largest event that can be stored by the port.
 *
 * This function returns the current space available, taking into account
 * events already stored in the port.
 *
 * @param port_buffer Port buffer to check size of.
 */
//size_t
//C     int jack_midi_max_event_size(void* port_buffer) JACK_OPTIONAL_WEAK_EXPORT;
size_t jack_midi_max_event_size(void *port_buffer);


/** Allocate space for an event to be written to an event port buffer.
 *
 * Clients are to write the actual event data to be written starting at the
 * pointer returned by this function. Clients must not write more than
 * @a data_size bytes into this buffer.  Clients must write normalised
 * MIDI data to the port - no running status and no (1-byte) realtime
 * messages interspersed with other messages (realtime messages are fine
 * when they occur on their own, like other messages).
 *
 * @param port_buffer Buffer to write event to.
 * @param time Sample offset of event.
 * @param data_size Length of event's raw data in bytes.
 * @return Pointer to the beginning of the reserved event's data buffer, or
 * NULL on error (ie not enough space).
 */
//C     jack_midi_data_t*
//C     jack_midi_event_reserve(void *port_buffer,
//C                             jack_nframes_t  time, 
                        //size_t 
//C     			int data_size) JACK_OPTIONAL_WEAK_EXPORT;
jack_midi_data_t * jack_midi_event_reserve(void *port_buffer, jack_nframes_t time, size_t data_size);


/** Write an event into an event port buffer.
 *
 * This function is simply a wrapper for @ref jack_midi_event_reserve
 * which writes the event data into the space reserved in the buffer.
 * The same restrictions on the MIDI data apply.
 * 
 * @param port_buffer Buffer to write event to.
 * @param time Sample offset of event.
 * @param data Message data to be written.
 * @param data_size Length of @a data in bytes.
 * @return 0 on success, ENOBUFS if there's not enough space in buffer for event.
 */
//C     int
//C     jack_midi_event_write(void *port_buffer,
//C                           jack_nframes_t time,
//C                           const jack_midi_data_t *data,
                      //size_t 
//C     			int data_size) JACK_OPTIONAL_WEAK_EXPORT;
int  jack_midi_event_write(void *port_buffer, jack_nframes_t time, jack_midi_data_t *data, size_t data_size);


/** Get the number of events that could not be written to @a port_buffer.
 *
 * This function returning a non-zero value implies @a port_buffer is full.
 * Currently the only way this can happen is if events are lost on port mixdown.
 *
 * @param port_buffer Port to receive count for.
 * @returns Number of events that could not be written to @a port_buffer.
 */
//C     jack_nframes_t
//C     jack_midi_get_lost_event_count(void *port_buffer) JACK_OPTIONAL_WEAK_EXPORT;
jack_nframes_t  jack_midi_get_lost_event_count(void *port_buffer);

/*@}*/

//C     #ifdef __cplusplus
//C     }
//C     #endif


//C     #endif /* __JACK_MIDIPORT_H */

