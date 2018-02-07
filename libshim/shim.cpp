/*
 * Meticulus hi6250 libsensors
 * Copyright (c) 2017 Jonathan Dennis [Meticulus]
 *                               theonejohnnyd@gmail.com
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */

#define LOG_TAG "libshim"

#include <utils/String8.h>

#include <libexif/exif-entry.h>
#include <hwui/Extensions.h>
#include <hwui/ProgramCache.h>

extern "C" {

/* libaudio_route */
extern int pop_seq_init(){return 0;};
extern int pop_seq_set(){return 0;};
extern int force_flush_set() { return 0;};

/* libexif */
extern void exif_entry_gps_initialize(ExifEntry * e, ExifTag tag)
{
    exif_entry_initialize(e,tag);
}

/* fingerprint.hi6250.so */
extern int __android_logPower_print() {return 0;};

/*extern android::uirenderer::Extensions* _ZN7android10uirenderer10ExtensionsC1Ev() {
    return new android::uirenderer::Extensions();
}*/

extern android::uirenderer::ProgramCache* _ZN7android10uirenderer12ProgramCacheD1Ev(android::uirenderer::Extensions* exts) {
    return new android::uirenderer::ProgramCache(* exts);
}

extern int _ZN7android10uirenderer12ProgramCacheC1ERNS0_10ExtensionsE() {return 0;};

//extern int _ZN7android10uirenderer12ProgramCache14generateShaderERKNS0_18ProgramDescriptionERNS_7String8ES6_(const android::uirenderer::ProgramDescription& description, android::String8& shader) {
extern int _ZN7android10uirenderer12ProgramCache14generateShaderERKNS0_18ProgramDescriptionERNS_7String8ES6_() {
   return 0;
}

extern int _ZN7android5Fence5mergeEPKcRKNS_2spIS0_EES6_() {
   return 0;
}

extern int _ZN7android13GraphicBufferC1EjjijmNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE() {
   return 0;
}

extern int _ZN7android13GraphicBufferC1EjjijNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE() {
   return 0;
}

extern int _ZN7android13GraphicBuffer9lockAsyncEmmRKNS_4RectEPPvi() {
  return 0;
}

extern int _Z35eglQueryStringImplementationANDROIDPvi() {
   return 0;
}

extern int _ZNK7android7Surface23getLastDequeueStartTimeEv() {
  return 0;
}

extern int _ZN7android20DisplayEventReceiverC1ENS_16ISurfaceComposer11VsyncSourceE() {
   return 0;
}

extern int _ZN7android11BufferQueue17createBufferQueueEPNS_2spINS_22IGraphicBufferProducerEEEPNS1_INS_22IGraphicBufferConsumerEEEb() {
   return 0;
}

extern int _ZNK7android10GLConsumer16getCurrentBufferEPi() {
   return 0;
}

extern int _ZN7android10ColorSpaceC1ERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS_7details6TMat33IfEENS0_18TransferParametersENS1_8functionIFffEEE() {
  return 0;
}

extern int _ZN7android10ColorSpace4sRGBEv() {
  return 0;
}

extern int _ZN7android19ColorSpaceConnectorC1ERKNS_10ColorSpaceES3_() {
  return 0;
}

extern int _ZTTN7android8hardware8graphics11bufferqueue4V1_05utils24H2BGraphicBufferProducerE() {
  return 0;
}

extern int _ZTVN7android8hardware8graphics11bufferqueue4V1_05utils24H2BGraphicBufferProducerE() {
  return 0;
}

}
