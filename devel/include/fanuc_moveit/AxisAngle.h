// Generated by gencpp from file fanuc_moveit/AxisAngle.msg
// DO NOT EDIT!


#ifndef FANUC_MOVEIT_MESSAGE_AXISANGLE_H
#define FANUC_MOVEIT_MESSAGE_AXISANGLE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Vector3.h>

namespace fanuc_moveit
{
template <class ContainerAllocator>
struct AxisAngle_
{
  typedef AxisAngle_<ContainerAllocator> Type;

  AxisAngle_()
    : axis()
    , angle(0.0)  {
    }
  AxisAngle_(const ContainerAllocator& _alloc)
    : axis(_alloc)
    , angle(0.0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _axis_type;
  _axis_type axis;

   typedef float _angle_type;
  _angle_type angle;





  typedef boost::shared_ptr< ::fanuc_moveit::AxisAngle_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fanuc_moveit::AxisAngle_<ContainerAllocator> const> ConstPtr;

}; // struct AxisAngle_

typedef ::fanuc_moveit::AxisAngle_<std::allocator<void> > AxisAngle;

typedef boost::shared_ptr< ::fanuc_moveit::AxisAngle > AxisAnglePtr;
typedef boost::shared_ptr< ::fanuc_moveit::AxisAngle const> AxisAngleConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fanuc_moveit::AxisAngle_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fanuc_moveit::AxisAngle_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fanuc_moveit::AxisAngle_<ContainerAllocator1> & lhs, const ::fanuc_moveit::AxisAngle_<ContainerAllocator2> & rhs)
{
  return lhs.axis == rhs.axis &&
    lhs.angle == rhs.angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fanuc_moveit::AxisAngle_<ContainerAllocator1> & lhs, const ::fanuc_moveit::AxisAngle_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fanuc_moveit

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::fanuc_moveit::AxisAngle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fanuc_moveit::AxisAngle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fanuc_moveit::AxisAngle_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fanuc_moveit::AxisAngle_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fanuc_moveit::AxisAngle_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fanuc_moveit::AxisAngle_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fanuc_moveit::AxisAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ccd1f1765b334728af430dd2d7e79aec";
  }

  static const char* value(const ::fanuc_moveit::AxisAngle_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xccd1f1765b334728ULL;
  static const uint64_t static_value2 = 0xaf430dd2d7e79aecULL;
};

template<class ContainerAllocator>
struct DataType< ::fanuc_moveit::AxisAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fanuc_moveit/AxisAngle";
  }

  static const char* value(const ::fanuc_moveit::AxisAngle_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fanuc_moveit::AxisAngle_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#This represent a transformation as axis-angle representation\n"
"\n"
"geometry_msgs/Vector3 axis\n"
"float32 angle\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::fanuc_moveit::AxisAngle_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fanuc_moveit::AxisAngle_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.axis);
      stream.next(m.angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AxisAngle_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fanuc_moveit::AxisAngle_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fanuc_moveit::AxisAngle_<ContainerAllocator>& v)
  {
    s << indent << "axis: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.axis);
    s << indent << "angle: ";
    Printer<float>::stream(s, indent + "  ", v.angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FANUC_MOVEIT_MESSAGE_AXISANGLE_H
