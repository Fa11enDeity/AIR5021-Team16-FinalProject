// Generated by gencpp from file spark_carry_object/scene.msg
// DO NOT EDIT!


#ifndef SPARK_CARRY_OBJECT_MESSAGE_SCENE_H
#define SPARK_CARRY_OBJECT_MESSAGE_SCENE_H

#include <ros/service_traits.h>


#include <spark_carry_object/sceneRequest.h>
#include <spark_carry_object/sceneResponse.h>


namespace spark_carry_object
{

struct scene
{

typedef sceneRequest Request;
typedef sceneResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct scene
} // namespace spark_carry_object


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::spark_carry_object::scene > {
  static const char* value()
  {
    return "db8f4e4997dce45d9d28ca5947e2928a";
  }

  static const char* value(const ::spark_carry_object::scene&) { return value(); }
};

template<>
struct DataType< ::spark_carry_object::scene > {
  static const char* value()
  {
    return "spark_carry_object/scene";
  }

  static const char* value(const ::spark_carry_object::scene&) { return value(); }
};


// service_traits::MD5Sum< ::spark_carry_object::sceneRequest> should match
// service_traits::MD5Sum< ::spark_carry_object::scene >
template<>
struct MD5Sum< ::spark_carry_object::sceneRequest>
{
  static const char* value()
  {
    return MD5Sum< ::spark_carry_object::scene >::value();
  }
  static const char* value(const ::spark_carry_object::sceneRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::spark_carry_object::sceneRequest> should match
// service_traits::DataType< ::spark_carry_object::scene >
template<>
struct DataType< ::spark_carry_object::sceneRequest>
{
  static const char* value()
  {
    return DataType< ::spark_carry_object::scene >::value();
  }
  static const char* value(const ::spark_carry_object::sceneRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::spark_carry_object::sceneResponse> should match
// service_traits::MD5Sum< ::spark_carry_object::scene >
template<>
struct MD5Sum< ::spark_carry_object::sceneResponse>
{
  static const char* value()
  {
    return MD5Sum< ::spark_carry_object::scene >::value();
  }
  static const char* value(const ::spark_carry_object::sceneResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::spark_carry_object::sceneResponse> should match
// service_traits::DataType< ::spark_carry_object::scene >
template<>
struct DataType< ::spark_carry_object::sceneResponse>
{
  static const char* value()
  {
    return DataType< ::spark_carry_object::scene >::value();
  }
  static const char* value(const ::spark_carry_object::sceneResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SPARK_CARRY_OBJECT_MESSAGE_SCENE_H
