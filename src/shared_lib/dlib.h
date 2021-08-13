#ifndef _DLIB_H_
#define _DLIB_H_

#if (defined(WIN32) || defined(WIN64))
#define EXPORT_API __declspec(dllexport)
#else
#define EXPORT_API __attribute__((visibility("default")))
#endif

#ifdef __cplusplus
extern "C" {
#endif

EXPORT_API int foo();

#ifdef __cplusplus
}
#endif

#endif