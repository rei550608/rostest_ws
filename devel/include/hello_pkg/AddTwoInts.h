// Generated by gencpp from file hello_pkg/AddTwoInts.msg
// DO NOT EDIT!


#ifndef HELLO_PKG_MESSAGE_ADDTWOINTS_H
#define HELLO_PKG_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <hello_pkg/AddTwoIntsRequest.h>
#include <hello_pkg/AddTwoIntsResponse.h>


namespace hello_pkg
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace hello_pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::hello_pkg::AddTwoInts > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::hello_pkg::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::hello_pkg::AddTwoInts > {
  static const char* value()
  {
    return "hello_pkg/AddTwoInts";
  }

  static const char* value(const ::hello_pkg::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::hello_pkg::AddTwoIntsRequest> should match
// service_traits::MD5Sum< ::hello_pkg::AddTwoInts >
template<>
struct MD5Sum< ::hello_pkg::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::hello_pkg::AddTwoInts >::value();
  }
  static const char* value(const ::hello_pkg::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::hello_pkg::AddTwoIntsRequest> should match
// service_traits::DataType< ::hello_pkg::AddTwoInts >
template<>
struct DataType< ::hello_pkg::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::hello_pkg::AddTwoInts >::value();
  }
  static const char* value(const ::hello_pkg::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::hello_pkg::AddTwoIntsResponse> should match
// service_traits::MD5Sum< ::hello_pkg::AddTwoInts >
template<>
struct MD5Sum< ::hello_pkg::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::hello_pkg::AddTwoInts >::value();
  }
  static const char* value(const ::hello_pkg::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::hello_pkg::AddTwoIntsResponse> should match
// service_traits::DataType< ::hello_pkg::AddTwoInts >
template<>
struct DataType< ::hello_pkg::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::hello_pkg::AddTwoInts >::value();
  }
  static const char* value(const ::hello_pkg::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // HELLO_PKG_MESSAGE_ADDTWOINTS_H