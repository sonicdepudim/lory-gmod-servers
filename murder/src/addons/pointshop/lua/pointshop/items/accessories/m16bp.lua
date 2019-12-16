ITEM.Name = "M16 Backpack"
ITEM.Price = 3000
ITEM.Model = "models/weapons/w_rif_m4a1.mdl"
ITEM.Bone = "ValveBiped.Bip01_Spine2"

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
    model:SetModelScale(0.8, 0)
    pos = pos + (ang:Right() * 3) + (ang:Up() * -3) + (ang:Forward() * 2)
    ang:RotateAroundAxis(ang:Right(), -30)

    return model, pos, ang
end