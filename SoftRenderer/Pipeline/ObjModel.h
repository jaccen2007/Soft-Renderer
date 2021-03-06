#ifndef OBJMODEL_H
#define OBJMODEL_H

#include "Mesh.h"
#include "../Math/Matrix4x4.h"

/**
 * @projectName   SoftRenderer
 * @brief         Obj file loader.
 * @author        YangWC
 * @date          2019-05-02
 */
namespace SoftRenderer
{

class ObjModel : public Mesh
{
private:
    Vector3D minPoint, maxPoint;        // Bounding box.

public:
    // ctor/dtor.
    ObjModel(const std::string &path);
    virtual ~ObjModel();

    // Size setting.
    Vector3D setSizeToVector(float sx, float sy, float sz) const;
    Matrix4x4 setSizeToMatrix(float sx, float sy, float sz) const;

private:
    // Obj file loader.
    void loadObjFile(const std::string &path);
};

}
#endif // OBJMODEL_H
