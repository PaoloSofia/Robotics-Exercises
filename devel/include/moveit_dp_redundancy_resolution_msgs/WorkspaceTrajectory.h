// Generated by gencpp from file moveit_dp_redundancy_resolution_msgs/WorkspaceTrajectory.msg
// DO NOT EDIT!


#ifndef MOVEIT_DP_REDUNDANCY_RESOLUTION_MSGS_MESSAGE_WORKSPACETRAJECTORY_H
#define MOVEIT_DP_REDUNDANCY_RESOLUTION_MSGS_MESSAGE_WORKSPACETRAJECTORY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace moveit_dp_redundancy_resolution_msgs
{
template <class ContainerAllocator>
struct WorkspaceTrajectory_
{
  typedef WorkspaceTrajectory_<ContainerAllocator> Type;

  WorkspaceTrajectory_()
    : name()
    , waypoints()
    , timestamps()  {
    }
  WorkspaceTrajectory_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , waypoints(_alloc)
    , timestamps(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::vector< ::geometry_msgs::Pose_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose_<ContainerAllocator> >::other >  _waypoints_type;
  _waypoints_type waypoints;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _timestamps_type;
  _timestamps_type timestamps;





  typedef boost::shared_ptr< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> const> ConstPtr;

}; // struct WorkspaceTrajectory_

typedef ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<std::allocator<void> > WorkspaceTrajectory;

typedef boost::shared_ptr< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory > WorkspaceTrajectoryPtr;
typedef boost::shared_ptr< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory const> WorkspaceTrajectoryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator1> & lhs, const ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.waypoints == rhs.waypoints &&
    lhs.timestamps == rhs.timestamps;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator1> & lhs, const ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace moveit_dp_redundancy_resolution_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c38ed604b3185b492021a162f5450342";
  }

  static const char* value(const ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc38ed604b3185b49ULL;
  static const uint64_t static_value2 = 0x2021a162f5450342ULL;
};

template<class ContainerAllocator>
struct DataType< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moveit_dp_redundancy_resolution_msgs/WorkspaceTrajectory";
  }

  static const char* value(const ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"geometry_msgs/Pose[] waypoints\n"
"float64[] timestamps\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.waypoints);
      stream.next(m.timestamps);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WorkspaceTrajectory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moveit_dp_redundancy_resolution_msgs::WorkspaceTrajectory_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "waypoints[]" << std::endl;
    for (size_t i = 0; i < v.waypoints.size(); ++i)
    {
      s << indent << "  waypoints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.waypoints[i]);
    }
    s << indent << "timestamps[]" << std::endl;
    for (size_t i = 0; i < v.timestamps.size(); ++i)
    {
      s << indent << "  timestamps[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.timestamps[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVEIT_DP_REDUNDANCY_RESOLUTION_MSGS_MESSAGE_WORKSPACETRAJECTORY_H
