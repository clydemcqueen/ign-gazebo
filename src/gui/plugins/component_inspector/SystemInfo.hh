/*
 * Copyright (C) 2022 Open Source Robotics Foundation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
*/
#ifndef IGNITION_GAZEBO_GUI_COMPONENTINSPECTOR_SYSTEMINFO_HH_
#define IGNITION_GAZEBO_GUI_COMPONENTINSPECTOR_SYSTEMINFO_HH_

#include <QObject>

namespace ignition
{
namespace gazebo
{
class ComponentInspector;
namespace inspector
{
  /// \brief A class that handles SystemInfo component changes.
  class SystemInfo : public QObject
  {
    Q_OBJECT

    /// \brief Constructor
    /// \param[in] _inspector The component inspector.
    public: explicit SystemInfo(ComponentInspector *_inspector);

    /// \brief Pointer to the component inspector. This is used to add
    /// callbacks.
    private: ComponentInspector *inspector{nullptr};
  };
}
}
}
#endif
