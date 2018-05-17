.class public Lcom/android/common/exif/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PB:I

.field public static final PC:I

.field public static final PD:I

.field public static final PE:I

.field public static final PF:I

.field public static final PG:I

.field public static final PH:I

.field public static final PI:I

.field public static final PJ:I

.field public static final PK:I

.field public static final PL:I

.field public static final PM:I

.field public static final PN:I

.field public static final PO:I

.field public static final PP:I

.field public static final PQ:I

.field public static final PR:I

.field public static final PS:I

.field public static final PT:I

.field public static final PU:I

.field public static final PV:I

.field public static final PW:I

.field public static final PX:I

.field public static final PY:Ljava/nio/ByteOrder;

.field public static final PZ:I

.field public static final QA:I

.field public static final QB:I

.field public static final QC:I

.field public static final QD:I

.field public static final QE:I

.field public static final QF:I

.field public static final QG:I

.field public static final QH:I

.field public static final QI:I

.field public static final QJ:I

.field public static final QK:I

.field public static final QL:I

.field public static final QM:I

.field public static final QN:I

.field public static final QO:I

.field public static final QP:I

.field public static final QQ:I

.field public static final QR:I

.field public static final QS:I

.field public static final QT:I

.field public static final QU:I

.field public static final QV:I

.field public static final QW:I

.field public static final QX:I

.field public static final QY:I

.field public static final QZ:I

.field public static final Qa:I

.field public static final Qb:I

.field public static final Qc:I

.field public static final Qd:I

.field public static final Qe:I

.field public static final Qf:I

.field public static final Qg:I

.field public static final Qh:I

.field public static final Qi:I

.field public static final Qj:I

.field public static final Qk:I

.field public static final Ql:I

.field public static final Qm:I

.field public static final Qn:I

.field public static final Qo:I

.field public static final Qp:I

.field public static final Qq:I

.field public static final Qr:I

.field public static final Qs:I

.field public static final Qt:I

.field public static final Qu:I

.field public static final Qv:I

.field public static final Qw:I

.field public static final Qx:I

.field public static final Qy:I

.field public static final Qz:I

.field public static final RA:I

.field public static final RB:I

.field public static final RC:I

.field public static final RD:I

.field public static final RE:I

.field public static final RF:I

.field public static final RG:I

.field public static final RH:I

.field public static final RI:I

.field public static final RJ:I

.field public static final RK:I

.field public static final RL:I

.field public static final RM:I

.field public static final RN:I

.field public static final RO:I

.field public static final RP:I

.field public static final RQ:I

.field public static final RR:I

.field public static final RS:I

.field protected static RY:Ljava/util/HashSet;

.field private static RZ:Ljava/util/HashSet;

.field public static final Ra:I

.field public static final Rb:I

.field public static final Rc:I

.field public static final Rd:I

.field public static final Re:I

.field public static final Rf:I

.field public static final Rg:I

.field public static final Rh:I

.field public static final Ri:I

.field public static final Rj:I

.field public static final Rk:I

.field public static final Rl:I

.field public static final Rm:I

.field public static final Rn:I

.field public static final Ro:I

.field public static final Rp:I

.field public static final Rq:I

.field public static final Rr:I

.field public static final Rs:I

.field public static final Rt:I

.field public static final Ru:I

.field public static final Rv:I

.field public static final Rw:I

.field public static final Rx:I

.field public static final Ry:I

.field public static final Rz:I


# instance fields
.field private RT:Lcom/android/common/exif/a;

.field private final RU:Ljava/text/DateFormat;

.field private final RV:Ljava/text/DateFormat;

.field private final RW:Ljava/util/Calendar;

.field private RX:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 76
    const/16 v0, 0x100

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 75
    sput v0, Lcom/android/common/exif/o;->Rg:I

    .line 78
    const/16 v0, 0x101

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 77
    sput v0, Lcom/android/common/exif/o;->Re:I

    .line 80
    const/16 v0, 0x102

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 79
    sput v0, Lcom/android/common/exif/o;->Qa:I

    .line 82
    const/16 v0, 0x103

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 81
    sput v0, Lcom/android/common/exif/o;->Qg:I

    .line 84
    const/16 v0, 0x106

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 83
    sput v0, Lcom/android/common/exif/o;->Rn:I

    .line 86
    const/16 v0, 0x10e

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 85
    sput v0, Lcom/android/common/exif/o;->Rd:I

    .line 88
    const/16 v0, 0x10f

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 87
    sput v0, Lcom/android/common/exif/o;->PC:I

    .line 90
    const/16 v0, 0x110

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 89
    sput v0, Lcom/android/common/exif/o;->PD:I

    .line 92
    const/16 v0, 0x111

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 91
    sput v0, Lcom/android/common/exif/o;->PQ:I

    .line 94
    const/16 v0, 0x112

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 93
    sput v0, Lcom/android/common/exif/o;->PS:I

    .line 96
    const/16 v0, 0x115

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 95
    sput v0, Lcom/android/common/exif/o;->Ru:I

    .line 98
    const/16 v0, 0x116

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 97
    sput v0, Lcom/android/common/exif/o;->Rt:I

    .line 100
    const/16 v0, 0x117

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 99
    sput v0, Lcom/android/common/exif/o;->PR:I

    .line 102
    const/16 v0, 0x11a

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 101
    sput v0, Lcom/android/common/exif/o;->RO:I

    .line 104
    const/16 v0, 0x11b

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 103
    sput v0, Lcom/android/common/exif/o;->RS:I

    .line 106
    const/16 v0, 0x11c

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 105
    sput v0, Lcom/android/common/exif/o;->Ro:I

    .line 108
    const/16 v0, 0x128

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 107
    sput v0, Lcom/android/common/exif/o;->Rs:I

    .line 110
    const/16 v0, 0x12d

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 109
    sput v0, Lcom/android/common/exif/o;->RL:I

    .line 112
    const/16 v0, 0x131

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 111
    sput v0, Lcom/android/common/exif/o;->RB:I

    .line 114
    const/16 v0, 0x132

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 113
    sput v0, Lcom/android/common/exif/o;->PT:I

    .line 116
    const/16 v0, 0x13b

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 115
    sput v0, Lcom/android/common/exif/o;->PB:I

    .line 118
    const/16 v0, 0x13e

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 117
    sput v0, Lcom/android/common/exif/o;->RN:I

    .line 120
    const/16 v0, 0x13f

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 119
    sput v0, Lcom/android/common/exif/o;->Rp:I

    .line 122
    const/16 v0, 0x211

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 121
    sput v0, Lcom/android/common/exif/o;->RP:I

    .line 124
    const/16 v0, 0x212

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 123
    sput v0, Lcom/android/common/exif/o;->RR:I

    .line 126
    const/16 v0, 0x213

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 125
    sput v0, Lcom/android/common/exif/o;->RQ:I

    .line 128
    const/16 v0, 0x214

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 127
    sput v0, Lcom/android/common/exif/o;->Rq:I

    .line 130
    const/16 v0, -0x7d68

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 129
    sput v0, Lcom/android/common/exif/o;->Qi:I

    .line 132
    const/16 v0, -0x7897

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 131
    sput v0, Lcom/android/common/exif/o;->PL:I

    .line 134
    const/16 v0, -0x77db

    invoke-static {v3, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 133
    sput v0, Lcom/android/common/exif/o;->PM:I

    .line 137
    const/16 v0, 0x201

    invoke-static {v4, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 136
    sput v0, Lcom/android/common/exif/o;->PO:I

    .line 139
    const/16 v0, 0x202

    invoke-static {v4, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 138
    sput v0, Lcom/android/common/exif/o;->PP:I

    .line 142
    const/16 v0, -0x7d66

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 141
    sput v0, Lcom/android/common/exif/o;->PK:I

    .line 144
    const/16 v0, -0x7d63

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 143
    sput v0, Lcom/android/common/exif/o;->PE:I

    .line 146
    const/16 v0, -0x77de

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 145
    sput v0, Lcom/android/common/exif/o;->Qs:I

    .line 148
    const/16 v0, -0x77dc

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 147
    sput v0, Lcom/android/common/exif/o;->RD:I

    .line 150
    const/16 v0, -0x77d9

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 149
    sput v0, Lcom/android/common/exif/o;->PJ:I

    .line 152
    const/16 v0, -0x77d8

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 151
    sput v0, Lcom/android/common/exif/o;->Rm:I

    .line 154
    const/16 v0, -0x7000

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 153
    sput v0, Lcom/android/common/exif/o;->Qo:I

    .line 156
    const/16 v0, -0x6ffd

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 155
    sput v0, Lcom/android/common/exif/o;->Ql:I

    .line 158
    const/16 v0, -0x6ffc

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 157
    sput v0, Lcom/android/common/exif/o;->Qk:I

    .line 160
    const/16 v0, -0x6eff

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 159
    sput v0, Lcom/android/common/exif/o;->Qe:I

    .line 162
    const/16 v0, -0x6efe

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 161
    sput v0, Lcom/android/common/exif/o;->Qf:I

    .line 164
    const/16 v0, -0x6dff

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 163
    sput v0, Lcom/android/common/exif/o;->RA:I

    .line 166
    const/16 v0, -0x6dfe

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 165
    sput v0, Lcom/android/common/exif/o;->PZ:I

    .line 168
    const/16 v0, -0x6dfd

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 167
    sput v0, Lcom/android/common/exif/o;->Qb:I

    .line 170
    const/16 v0, -0x6dfc

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 169
    sput v0, Lcom/android/common/exif/o;->Qp:I

    .line 172
    const/16 v0, -0x6dfb

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 171
    sput v0, Lcom/android/common/exif/o;->Rk:I

    .line 174
    const/16 v0, -0x6dfa

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 173
    sput v0, Lcom/android/common/exif/o;->RF:I

    .line 176
    const/16 v0, -0x6df9

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 175
    sput v0, Lcom/android/common/exif/o;->Rl:I

    .line 178
    const/16 v0, -0x6df8

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 177
    sput v0, Lcom/android/common/exif/o;->Ri:I

    .line 180
    const/16 v0, -0x6df7

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 179
    sput v0, Lcom/android/common/exif/o;->Qu:I

    .line 182
    const/16 v0, -0x6df6

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 181
    sput v0, Lcom/android/common/exif/o;->PF:I

    .line 184
    const/16 v0, -0x6dec

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 183
    sput v0, Lcom/android/common/exif/o;->RE:I

    .line 186
    const/16 v0, -0x6d84

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 185
    sput v0, Lcom/android/common/exif/o;->Rj:I

    .line 188
    const/16 v0, -0x6d7a

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 187
    sput v0, Lcom/android/common/exif/o;->PI:I

    .line 190
    const/16 v0, -0x6d70

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 189
    sput v0, Lcom/android/common/exif/o;->RI:I

    .line 192
    const/16 v0, -0x6d6f

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 191
    sput v0, Lcom/android/common/exif/o;->RK:I

    .line 194
    const/16 v0, -0x6d6e

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 193
    sput v0, Lcom/android/common/exif/o;->RJ:I

    .line 196
    const/16 v0, -0x6000

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 195
    sput v0, Lcom/android/common/exif/o;->Qv:I

    .line 198
    const/16 v0, -0x5fff

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 197
    sput v0, Lcom/android/common/exif/o;->Qd:I

    .line 200
    const/16 v0, -0x5ffe

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 199
    sput v0, Lcom/android/common/exif/o;->PG:I

    .line 202
    const/16 v0, -0x5ffd

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 201
    sput v0, Lcom/android/common/exif/o;->PH:I

    .line 204
    const/16 v0, -0x5ffc

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 203
    sput v0, Lcom/android/common/exif/o;->Rr:I

    .line 206
    const/16 v0, -0x5ffb

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 205
    sput v0, Lcom/android/common/exif/o;->PN:I

    .line 208
    const/16 v0, -0x5df5

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 207
    sput v0, Lcom/android/common/exif/o;->Qw:I

    .line 210
    const/16 v0, -0x5df4

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 209
    sput v0, Lcom/android/common/exif/o;->RC:I

    .line 212
    const/16 v0, -0x5df2

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 211
    sput v0, Lcom/android/common/exif/o;->Qz:I

    .line 214
    const/16 v0, -0x5df1

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 213
    sput v0, Lcom/android/common/exif/o;->QA:I

    .line 216
    const/16 v0, -0x5df0

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 215
    sput v0, Lcom/android/common/exif/o;->Qy:I

    .line 218
    const/16 v0, -0x5dec

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 217
    sput v0, Lcom/android/common/exif/o;->RH:I

    .line 220
    const/16 v0, -0x5deb

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 219
    sput v0, Lcom/android/common/exif/o;->Qq:I

    .line 222
    const/16 v0, -0x5de9

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 221
    sput v0, Lcom/android/common/exif/o;->Ry:I

    .line 224
    const/16 v0, -0x5d00

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 223
    sput v0, Lcom/android/common/exif/o;->Qt:I

    .line 226
    const/16 v0, -0x5cff

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 225
    sput v0, Lcom/android/common/exif/o;->Rx:I

    .line 228
    const/16 v0, -0x5cfe

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 227
    sput v0, Lcom/android/common/exif/o;->Qc:I

    .line 230
    const/16 v0, -0x5bff

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 229
    sput v0, Lcom/android/common/exif/o;->Qj:I

    .line 232
    const/16 v0, -0x5bfe

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 231
    sput v0, Lcom/android/common/exif/o;->Qr:I

    .line 234
    const/16 v0, -0x5bfd

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 233
    sput v0, Lcom/android/common/exif/o;->RM:I

    .line 236
    const/16 v0, -0x5bfc

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 235
    sput v0, Lcom/android/common/exif/o;->Qn:I

    .line 238
    const/16 v0, -0x5bfb

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 237
    sput v0, Lcom/android/common/exif/o;->Qx:I

    .line 240
    const/16 v0, -0x5bfa

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 239
    sput v0, Lcom/android/common/exif/o;->Rw:I

    .line 242
    const/16 v0, -0x5bf9

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 241
    sput v0, Lcom/android/common/exif/o;->QB:I

    .line 244
    const/16 v0, -0x5bf8

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 243
    sput v0, Lcom/android/common/exif/o;->Qh:I

    .line 246
    const/16 v0, -0x5bf7

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 245
    sput v0, Lcom/android/common/exif/o;->Rv:I

    .line 248
    const/16 v0, -0x5bf6

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 247
    sput v0, Lcom/android/common/exif/o;->Rz:I

    .line 250
    const/16 v0, -0x5bf5

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 249
    sput v0, Lcom/android/common/exif/o;->Qm:I

    .line 252
    const/16 v0, -0x5bf4

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 251
    sput v0, Lcom/android/common/exif/o;->RG:I

    .line 254
    const/16 v0, -0x5be0

    invoke-static {v1, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 253
    sput v0, Lcom/android/common/exif/o;->Rf:I

    .line 257
    invoke-static {v2, v3}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 256
    sput v0, Lcom/android/common/exif/o;->Rc:I

    .line 259
    invoke-static {v2, v4}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 258
    sput v0, Lcom/android/common/exif/o;->PW:I

    .line 261
    invoke-static {v2, v1}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 260
    sput v0, Lcom/android/common/exif/o;->PU:I

    .line 263
    invoke-static {v2, v5}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 262
    sput v0, Lcom/android/common/exif/o;->PX:I

    .line 265
    invoke-static {v2, v2}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 264
    sput v0, Lcom/android/common/exif/o;->PV:I

    .line 267
    const/4 v0, 0x5

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 266
    sput v0, Lcom/android/common/exif/o;->QD:I

    .line 269
    const/4 v0, 0x6

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 268
    sput v0, Lcom/android/common/exif/o;->QC:I

    .line 271
    const/4 v0, 0x7

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 270
    sput v0, Lcom/android/common/exif/o;->QZ:I

    .line 273
    const/16 v0, 0x8

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 272
    sput v0, Lcom/android/common/exif/o;->QV:I

    .line 275
    const/16 v0, 0x9

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 274
    sput v0, Lcom/android/common/exif/o;->QY:I

    .line 277
    const/16 v0, 0xa

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 276
    sput v0, Lcom/android/common/exif/o;->QT:I

    .line 279
    const/16 v0, 0xb

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 278
    sput v0, Lcom/android/common/exif/o;->QP:I

    .line 281
    const/16 v0, 0xc

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 280
    sput v0, Lcom/android/common/exif/o;->QX:I

    .line 283
    const/16 v0, 0xd

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 282
    sput v0, Lcom/android/common/exif/o;->QW:I

    .line 285
    const/16 v0, 0xe

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 284
    sput v0, Lcom/android/common/exif/o;->Rb:I

    .line 287
    const/16 v0, 0xf

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 286
    sput v0, Lcom/android/common/exif/o;->Ra:I

    .line 289
    const/16 v0, 0x10

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 288
    sput v0, Lcom/android/common/exif/o;->QR:I

    .line 291
    const/16 v0, 0x11

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 290
    sput v0, Lcom/android/common/exif/o;->QQ:I

    .line 293
    const/16 v0, 0x12

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 292
    sput v0, Lcom/android/common/exif/o;->QS:I

    .line 295
    const/16 v0, 0x13

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 294
    sput v0, Lcom/android/common/exif/o;->QL:I

    .line 297
    const/16 v0, 0x14

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 296
    sput v0, Lcom/android/common/exif/o;->QK:I

    .line 299
    const/16 v0, 0x15

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 298
    sput v0, Lcom/android/common/exif/o;->QN:I

    .line 301
    const/16 v0, 0x16

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 300
    sput v0, Lcom/android/common/exif/o;->QM:I

    .line 303
    const/16 v0, 0x17

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 302
    sput v0, Lcom/android/common/exif/o;->QH:I

    .line 305
    const/16 v0, 0x18

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 304
    sput v0, Lcom/android/common/exif/o;->QG:I

    .line 307
    const/16 v0, 0x19

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 306
    sput v0, Lcom/android/common/exif/o;->QJ:I

    .line 309
    const/16 v0, 0x1a

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 308
    sput v0, Lcom/android/common/exif/o;->QI:I

    .line 311
    const/16 v0, 0x1b

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 310
    sput v0, Lcom/android/common/exif/o;->QU:I

    .line 313
    const/16 v0, 0x1c

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 312
    sput v0, Lcom/android/common/exif/o;->QE:I

    .line 315
    const/16 v0, 0x1d

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 314
    sput v0, Lcom/android/common/exif/o;->QF:I

    .line 317
    const/16 v0, 0x1e

    invoke-static {v2, v0}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 316
    sput v0, Lcom/android/common/exif/o;->QO:I

    .line 320
    invoke-static {v5, v4}, Lcom/android/common/exif/o;->QZ(IS)I

    move-result v0

    .line 319
    sput v0, Lcom/android/common/exif/o;->Rh:I

    .line 326
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/common/exif/o;->RZ:Ljava/util/HashSet;

    .line 328
    sget-object v0, Lcom/android/common/exif/o;->RZ:Ljava/util/HashSet;

    sget v1, Lcom/android/common/exif/o;->PM:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@11
    nop

    .line 329
    sget-object v0, Lcom/android/common/exif/o;->RZ:Ljava/util/HashSet;

    sget v1, Lcom/android/common/exif/o;->PL:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@11
    nop

    .line 330
    sget-object v0, Lcom/android/common/exif/o;->RZ:Ljava/util/HashSet;

    sget v1, Lcom/android/common/exif/o;->PO:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@11
    nop

    .line 331
    sget-object v0, Lcom/android/common/exif/o;->RZ:Ljava/util/HashSet;

    sget v1, Lcom/android/common/exif/o;->PN:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@11
    nop

    .line 332
    sget-object v0, Lcom/android/common/exif/o;->RZ:Ljava/util/HashSet;

    sget v1, Lcom/android/common/exif/o;->PQ:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@11
    nop

    .line 338
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/common/exif/o;->RZ:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/common/exif/o;->RY:Ljava/util/HashSet;

    .line 340
    sget-object v0, Lcom/android/common/exif/o;->RY:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@11
    nop

    .line 341
    sget-object v0, Lcom/android/common/exif/o;->RY:Ljava/util/HashSet;

    sget v1, Lcom/android/common/exif/o;->PP:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@11
    nop

    .line 342
    sget-object v0, Lcom/android/common/exif/o;->RY:Ljava/util/HashSet;

    sget v1, Lcom/android/common/exif/o;->PR:I

    invoke-static {v1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@11
    nop

    .line 712
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/android/common/exif/o;->PY:Ljava/nio/ByteOrder;

    .line 65
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    new-instance v0, Lcom/android/common/exif/a;

    sget-object v1, Lcom/android/common/exif/o;->PY:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/common/exif/a;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/common/exif/o;->RT:Lcom/android/common/exif/a;

    .line 1954
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/common/exif/o;->RU:Ljava/text/DateFormat;

    .line 1955
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/common/exif/o;->RV:Ljava/text/DateFormat;

    .line 1957
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1956
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/exif/o;->RW:Ljava/util/Calendar;

    .line 2067
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/exif/o;->RX:Landroid/util/SparseIntArray;

    .line 715
    iget-object v0, p0, Lcom/android/common/exif/o;->RV:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 714
    return-void
.end method

.method public static QK(I)S
    .registers 2

    .prologue
    .line 357
    int-to-short v0, p0

    return v0
.end method

.method protected static QN(II)Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2377
    invoke-static {}, Lcom/android/common/exif/p;->RE()[I

    move-result-object v2

    .line 2378
    invoke-static {p0}, Lcom/android/common/exif/o;->Re(I)I

    move-result v3

    move v0, v1

    .line 2379
    :goto_b
    array-length v4, v2

    if-ge v0, v4, :cond_1c

    .line 2380
    aget v4, v2, v0

    if-ne p1, v4, :cond_19

    shr-int v4, v3, v0

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_19

    .line 2381
    return v5

    .line 2379
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2384
    :cond_1c
    return v1
.end method

.method public static QR(I)S
    .registers 3

    .prologue
    .line 1866
    rem-int/lit16 v0, p0, 0x168

    .line 1867
    if-gez v0, :cond_6

    .line 1868
    add-int/lit16 v0, v0, 0x168

    .line 1870
    :cond_6
    const/16 v1, 0x5a

    if-ge v0, v1, :cond_c

    .line 1871
    const/4 v0, 0x1

    return v0

    .line 1872
    :cond_c
    const/16 v1, 0xb4

    if-ge v0, v1, :cond_12

    .line 1873
    const/4 v0, 0x6

    return v0

    .line 1874
    :cond_12
    const/16 v1, 0x10e

    if-ge v0, v1, :cond_18

    .line 1875
    const/4 v0, 0x3

    return v0

    .line 1877
    :cond_18
    const/16 v0, 0x8

    return v0
.end method

.method public static QV(D)[Lcom/android/common/exif/m;
    .registers 12

    .prologue
    const-wide/16 v8, 0x1

    .line 2037
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 2038
    double-to-int v2, v0

    .line 2039
    int-to-double v4, v2

    sub-double/2addr v0, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v4

    .line 2040
    double-to-int v3, v0

    .line 2041
    int-to-double v4, v3

    sub-double/2addr v0, v4

    const-wide v4, 0x40b7700000000000L    # 6000.0

    mul-double/2addr v0, v4

    .line 2042
    double-to-int v0, v0

    .line 2043
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/common/exif/m;

    .line 2044
    new-instance v4, Lcom/android/common/exif/m;

    int-to-long v6, v2

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/android/common/exif/m;-><init>(JJ)V

    const/4 v2, 0x0

    aput-object v4, v1, v2

    new-instance v2, Lcom/android/common/exif/m;

    int-to-long v4, v3

    invoke-direct {v2, v4, v5, v8, v9}, Lcom/android/common/exif/m;-><init>(JJ)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/android/common/exif/m;

    int-to-long v4, v0

    const-wide/16 v6, 0x64

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/common/exif/m;-><init>(JJ)V

    const/4 v0, 0x2

    aput-object v2, v1, v0

    .line 2043
    return-object v1
.end method

.method protected static QW(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 2058
    if-eqz p0, :cond_5

    .line 2060
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 2057
    :cond_5
    :goto_5
    return-void

    .line 2061
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method protected static QX(S)Z
    .registers 3

    .prologue
    .line 1488
    sget-object v0, Lcom/android/common/exif/o;->RZ:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static QZ(IS)I
    .registers 4

    .prologue
    .line 349
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private Rd(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 2049
    new-array v1, v4, [B

    .line 2050
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2051
    :goto_9
    const/4 v2, -0x1

    if-eq v0, v2, :cond_14

    .line 2052
    invoke-virtual {p2, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 2053
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_9

    .line 2048
    :cond_14
    return-void
.end method

.method protected static Re(I)I
    .registers 2

    .prologue
    .line 2352
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static Rf(I)I
    .registers 2

    .prologue
    .line 2409
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static Rj([I)I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 2388
    if-eqz p0, :cond_6

    array-length v0, p0

    if-nez v0, :cond_7

    .line 2389
    :cond_6
    return v2

    .line 2392
    :cond_7
    invoke-static {}, Lcom/android/common/exif/p;->RE()[I

    move-result-object v4

    move v3, v2

    move v0, v2

    .line 2393
    :goto_d
    const/4 v1, 0x5

    if-ge v3, v1, :cond_24

    .line 2394
    array-length v5, p0

    move v1, v2

    :goto_12
    if-ge v1, v5, :cond_1d

    aget v6, p0, v1

    .line 2395
    aget v7, v4, v3

    if-ne v7, v6, :cond_21

    .line 2396
    const/4 v1, 0x1

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 2393
    :cond_1d
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_d

    .line 2394
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2401
    :cond_24
    return v0
.end method

.method public static Rp(I)I
    .registers 2

    .prologue
    .line 364
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method protected static Rq(I)S
    .registers 2

    .prologue
    .line 2405
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private Rr()V
    .registers 10

    .prologue
    const/high16 v8, 0x40000

    const/high16 v7, 0x70000

    const/high16 v6, 0x50000

    const/high16 v5, 0x30000

    const/high16 v4, 0x20000

    .line 2086
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2085
    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 2088
    invoke-static {v0}, Lcom/android/common/exif/o;->Rj([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2089
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PC:I

    .line 2090
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2089
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2091
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rg:I

    .line 2092
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2091
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2093
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Re:I

    .line 2094
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2093
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2095
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qa:I

    .line 2096
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x3

    .line 2095
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2097
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qg:I

    .line 2098
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2097
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2099
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rn:I

    .line 2100
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2099
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2101
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PS:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2103
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Ru:I

    .line 2104
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2103
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2105
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Ro:I

    .line 2106
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2105
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2107
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RR:I

    .line 2108
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x2

    .line 2107
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2109
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RQ:I

    .line 2110
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2109
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2111
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RO:I

    .line 2112
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2111
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2113
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RS:I

    .line 2114
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2113
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2115
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rs:I

    .line 2116
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2115
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2117
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PQ:I

    .line 2118
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x0

    .line 2117
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2119
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rt:I

    .line 2120
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2119
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2121
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PR:I

    .line 2122
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x0

    .line 2121
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2123
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RL:I

    .line 2124
    or-int v3, v0, v5

    or-int/lit16 v3, v3, 0x300

    .line 2123
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2125
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RN:I

    .line 2126
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x2

    .line 2125
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2127
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rp:I

    .line 2128
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x6

    .line 2127
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2129
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RP:I

    .line 2130
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x3

    .line 2129
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2131
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rq:I

    .line 2132
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x6

    .line 2131
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2133
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PT:I

    .line 2134
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    .line 2133
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2135
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rd:I

    .line 2136
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2135
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2137
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PC:I

    .line 2138
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2137
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2139
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PD:I

    .line 2140
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2139
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2141
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RB:I

    .line 2142
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2141
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2143
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PB:I

    .line 2144
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2143
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2145
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qi:I

    .line 2146
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2145
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2147
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PL:I

    .line 2148
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2147
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2149
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PM:I

    .line 2150
    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    .line 2149
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v0}, vtable@21
    nop

    .line 2152
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2153
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2155
    invoke-static {v0}, Lcom/android/common/exif/o;->Rj([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2156
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PO:I

    .line 2157
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2156
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2158
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PP:I

    .line 2159
    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    .line 2158
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v0}, vtable@21
    nop

    .line 2161
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2162
    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2164
    invoke-static {v0}, Lcom/android/common/exif/o;->Rj([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2165
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qo:I

    .line 2166
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    .line 2165
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2167
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qv:I

    .line 2168
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    .line 2167
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2169
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qd:I

    .line 2170
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2169
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2171
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qe:I

    .line 2172
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    .line 2171
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2173
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qf:I

    .line 2174
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2173
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2175
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PG:I

    .line 2176
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2175
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2177
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PH:I

    .line 2178
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2177
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2179
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rj:I

    .line 2180
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2179
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2181
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PI:I

    .line 2182
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2181
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2183
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rr:I

    .line 2184
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0xd

    .line 2183
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2185
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Ql:I

    .line 2186
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    .line 2185
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2187
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qk:I

    .line 2188
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    .line 2187
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2189
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RI:I

    .line 2190
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2189
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2191
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RK:I

    .line 2192
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2191
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2193
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RJ:I

    .line 2194
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2193
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2195
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rf:I

    .line 2196
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x21

    .line 2195
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2197
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PK:I

    .line 2198
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2197
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2199
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PE:I

    .line 2200
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2199
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2201
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qs:I

    .line 2202
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2201
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2203
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RD:I

    .line 2204
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2203
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2205
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PJ:I

    .line 2206
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x0

    .line 2205
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2207
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rm:I

    .line 2208
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2207
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2209
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RA:I

    .line 2210
    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    .line 2209
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2211
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PZ:I

    .line 2212
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2211
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2213
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qb:I

    .line 2214
    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    .line 2213
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2215
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qp:I

    .line 2216
    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    .line 2215
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2217
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rk:I

    .line 2218
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2217
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2219
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RF:I

    .line 2220
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2219
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2221
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rl:I

    .line 2222
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2221
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2223
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Ri:I

    .line 2224
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2223
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2225
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qu:I

    .line 2226
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2225
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2227
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PF:I

    .line 2228
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2227
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2229
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RE:I

    .line 2230
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x0

    .line 2229
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2231
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qw:I

    .line 2232
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2231
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2233
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RC:I

    .line 2234
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2233
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2235
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qz:I

    .line 2236
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2235
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2237
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QA:I

    .line 2238
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2237
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2239
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qy:I

    .line 2240
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2239
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2241
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RH:I

    .line 2242
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x2

    .line 2241
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2243
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qq:I

    .line 2244
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2243
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2245
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Ry:I

    .line 2246
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2245
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2247
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qt:I

    .line 2248
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x1

    .line 2247
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2249
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rx:I

    .line 2250
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x1

    .line 2249
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2251
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qc:I

    .line 2252
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2251
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2253
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qj:I

    .line 2254
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2253
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2255
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qr:I

    .line 2256
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2255
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2257
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RM:I

    .line 2258
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2257
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2259
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qn:I

    .line 2260
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2259
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2261
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qx:I

    .line 2262
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2261
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2263
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rw:I

    .line 2264
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2263
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2265
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QB:I

    .line 2266
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2265
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2267
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qh:I

    .line 2268
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2267
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2269
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rv:I

    .line 2270
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2269
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2271
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rz:I

    .line 2272
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2271
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2273
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Qm:I

    .line 2274
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2273
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2275
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->RG:I

    .line 2276
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2275
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2277
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PN:I

    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v0}, vtable@21
    nop

    .line 2280
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2281
    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2283
    invoke-static {v0}, Lcom/android/common/exif/o;->Rj([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2284
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rc:I

    .line 2285
    const/high16 v3, 0x10000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x4

    .line 2284
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2286
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PW:I

    .line 2287
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2286
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2288
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PX:I

    .line 2289
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2288
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2290
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PU:I

    .line 2291
    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x3

    .line 2290
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2292
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->PV:I

    .line 2293
    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x3

    .line 2292
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2294
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QD:I

    .line 2295
    const/high16 v3, 0x10000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    .line 2294
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2296
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QC:I

    .line 2297
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2296
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2298
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QZ:I

    .line 2299
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x3

    .line 2298
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2300
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QV:I

    .line 2301
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2300
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2302
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QY:I

    .line 2303
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2302
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2304
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QT:I

    .line 2305
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2304
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2306
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QP:I

    .line 2307
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2306
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2308
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QX:I

    .line 2309
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2308
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2310
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QW:I

    .line 2311
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2310
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2312
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rb:I

    .line 2313
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2312
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2314
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Ra:I

    .line 2315
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2314
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2316
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QR:I

    .line 2317
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2316
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2318
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QQ:I

    .line 2319
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2318
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2320
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QS:I

    .line 2321
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2320
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2322
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QL:I

    .line 2323
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2322
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2324
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QK:I

    .line 2325
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2324
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2326
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QH:I

    .line 2327
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2326
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2328
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QG:I

    .line 2329
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2328
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2330
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QJ:I

    .line 2331
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2330
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2332
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QI:I

    .line 2333
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2332
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2334
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QU:I

    .line 2335
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2334
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2336
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QE:I

    .line 2337
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2336
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2338
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QF:I

    .line 2339
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0xb

    .line 2338
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@21
    nop

    .line 2340
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->QO:I

    .line 2341
    or-int/2addr v0, v5

    or-int/lit8 v0, v0, 0xb

    .line 2340
    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v0}, vtable@21
    nop

    .line 2343
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2344
    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2346
    invoke-static {v0}, Lcom/android/common/exif/o;->Rj([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2347
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    sget v2, Lcom/android/common/exif/o;->Rh:I

    or-int/2addr v0, v4

    or-int/lit8 v0, v0, 0x0

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v0}, vtable@21
    nop

    .line 2077
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public QF(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 758
    if-nez p1, :cond_c

    .line 759
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 763
    :cond_c
    :try_start_c
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_1d

    .line 764
    :try_start_16
    invoke-virtual {p0, v1}, Lcom/android/common/exif/o;->Rs(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_23

    .line 769
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 757
    return-void

    .line 765
    :catch_1d
    move-exception v0

    move-object v1, v2

    .line 766
    :goto_1f
    invoke-static {v1}, Lcom/android/common/exif/o;->QW(Ljava/io/Closeable;)V

    .line 767
    throw v0

    .line 765
    :catch_23
    move-exception v0

    goto :goto_1f
.end method

.method public QG(I)Lcom/android/common/exif/k;
    .registers 3

    .prologue
    .line 1196
    invoke-virtual {p0, p1}, Lcom/android/common/exif/o;->Rg(I)I

    move-result v0

    .line 1197
    invoke-virtual {p0, p1, v0}, Lcom/android/common/exif/o;->Rk(II)Lcom/android/common/exif/k;

    move-result-object v0

    return-object v0
.end method

.method public QH([B)V
    .registers 3

    .prologue
    .line 726
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/android/common/exif/o;->Rs(Ljava/io/InputStream;)V

    .line 725
    return-void
.end method

.method public QI(I)Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 1281
    invoke-virtual {p0, p1}, Lcom/android/common/exif/o;->Rg(I)I

    move-result v0

    .line 1282
    invoke-virtual {p0, p1, v0}, Lcom/android/common/exif/o;->Rl(II)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public QJ(I)Lcom/android/common/exif/m;
    .registers 3

    .prologue
    .line 1319
    invoke-virtual {p0, p1}, Lcom/android/common/exif/o;->Rg(I)I

    move-result v0

    .line 1320
    invoke-virtual {p0, p1, v0}, Lcom/android/common/exif/o;->Rn(II)Lcom/android/common/exif/m;

    move-result-object v0

    return-object v0
.end method

.method public QL([BLjava/io/OutputStream;)V
    .registers 6

    .prologue
    .line 800
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    .line 801
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 803
    :cond_d
    invoke-virtual {p0, p2}, Lcom/android/common/exif/o;->Rh(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 804
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 805
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 799
    return-void
.end method

.method protected QM()Landroid/util/SparseIntArray;
    .registers 2

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/common/exif/o;->RX:Landroid/util/SparseIntArray;

    if-nez v0, :cond_e

    .line 2071
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/common/exif/o;->RX:Landroid/util/SparseIntArray;

    .line 2072
    invoke-direct {p0}, Lcom/android/common/exif/o;->Rr()V

    .line 2074
    :cond_e
    iget-object v0, p0, Lcom/android/common/exif/o;->RX:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public QO()Ljava/util/List;
    .registers 2

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/common/exif/o;->RT:Lcom/android/common/exif/a;

    invoke-virtual {v0}, Lcom/android/common/exif/a;->Ol()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public QP(ILjava/lang/Object;)Lcom/android/common/exif/k;
    .registers 4

    .prologue
    .line 1528
    invoke-static {p1}, Lcom/android/common/exif/o;->Rp(I)I

    move-result v0

    .line 1529
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/common/exif/o;->Rc(IILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v0

    return-object v0
.end method

.method public QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;
    .registers 3

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/common/exif/o;->RT:Lcom/android/common/exif/a;

    invoke-virtual {v0, p1}, Lcom/android/common/exif/a;->Oj(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    move-result-object v0

    return-object v0
.end method

.method public QS(IJLjava/util/TimeZone;)Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 1970
    sget v0, Lcom/android/common/exif/o;->PT:I

    if-eq p1, v0, :cond_9

    sget v0, Lcom/android/common/exif/o;->Qk:I

    if-ne p1, v0, :cond_1f

    .line 1972
    :cond_9
    iget-object v0, p0, Lcom/android/common/exif/o;->RU:Ljava/text/DateFormat;

    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1973
    iget-object v0, p0, Lcom/android/common/exif/o;->RU:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v0

    .line 1974
    if-nez v0, :cond_24

    .line 1975
    return v2

    .line 1971
    :cond_1f
    sget v0, Lcom/android/common/exif/o;->Ql:I

    if-eq p1, v0, :cond_9

    .line 1979
    return v2

    .line 1977
    :cond_24
    invoke-virtual {p0, v0}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 1981
    const/4 v0, 0x1

    return v0
.end method

.method public QT(Ljava/util/Collection;)V
    .registers 4

    .prologue
    .line 1599
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/exif/k;

    .line 1600
    invoke-virtual {p0, v0}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    goto :goto_4

    .line 1598
    :cond_14
    return-void
.end method

.method public QU(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1098
    invoke-virtual {p0, p1, p2}, Lcom/android/common/exif/o;->Rt(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 1100
    iget-object v3, p0, Lcom/android/common/exif/o;->RT:Lcom/android/common/exif/a;

    .line 1101
    new-instance v0, Lcom/android/common/exif/a;

    sget-object v1, Lcom/android/common/exif/o;->PY:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/common/exif/a;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/common/exif/o;->RT:Lcom/android/common/exif/a;

    .line 1105
    :try_start_12
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_3b
    .catchall {:try_start_12 .. :try_end_17} :catchall_51

    .line 1106
    :try_start_17
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1107
    invoke-direct {p0, v1, v0}, Lcom/android/common/exif/o;->Rd(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1108
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1109
    invoke-virtual {p0, v0}, Lcom/android/common/exif/o;->QH([B)V

    .line 1110
    invoke-virtual {p0, p2}, Lcom/android/common/exif/o;->QT(Ljava/util/Collection;)V

    .line 1111
    invoke-virtual {p0, v0, p1}, Lcom/android/common/exif/o;->Rv([BLjava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2c} :catch_54
    .catchall {:try_start_17 .. :try_end_2c} :catchall_4a

    .line 1117
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1119
    iput-object v3, p0, Lcom/android/common/exif/o;->RT:Lcom/android/common/exif/a;

    .line 1123
    :cond_31
    const-string/jumbo v0, "CameraExif"

    const-string/jumbo v1, "rewriteExif successful"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    return-void

    .line 1112
    :catch_3b
    move-exception v0

    move-object v1, v2

    .line 1113
    :goto_3d
    :try_start_3d
    const-string/jumbo v2, "CameraExif"

    const-string/jumbo v4, "rewriteExif IOException"

    invoke-static {v2, v4}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-static {v1}, Lcom/android/common/exif/o;->QW(Ljava/io/Closeable;)V

    .line 1115
    throw v0
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_4a

    .line 1116
    :catchall_4a
    move-exception v0

    .line 1117
    :goto_4b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1119
    iput-object v3, p0, Lcom/android/common/exif/o;->RT:Lcom/android/common/exif/a;

    .line 1116
    throw v0

    :catchall_51
    move-exception v0

    move-object v1, v2

    goto :goto_4b

    .line 1112
    :catch_54
    move-exception v0

    goto :goto_3d
.end method

.method protected QY(I)Lcom/android/common/exif/k;
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 1533
    invoke-virtual {p0}, Lcom/android/common/exif/o;->QM()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1534
    if-nez v0, :cond_d

    .line 1535
    const/4 v0, 0x0

    return-object v0

    .line 1537
    :cond_d
    invoke-static {v0}, Lcom/android/common/exif/o;->Rq(I)S

    move-result v2

    .line 1538
    invoke-static {v0}, Lcom/android/common/exif/o;->Rf(I)I

    move-result v3

    .line 1539
    if-eqz v3, :cond_18

    const/4 v5, 0x1

    .line 1540
    :cond_18
    invoke-static {p1}, Lcom/android/common/exif/o;->Rp(I)I

    move-result v4

    .line 1541
    new-instance v0, Lcom/android/common/exif/k;

    invoke-static {p1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-direct/range {v0 .. v5}, Lcom/android/common/exif/k;-><init>(SSIIZ)V

    .line 1542
    return-object v0
.end method

.method public Ra()V
    .registers 3

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/android/common/exif/o;->RT:Lcom/android/common/exif/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/exif/a;->Ow([B)V

    .line 1846
    return-void
.end method

.method public Rb(DD)Z
    .registers 14

    .prologue
    const-wide/16 v6, 0x0

    .line 1992
    sget v0, Lcom/android/common/exif/o;->PU:I

    invoke-static {p1, p2}, Lcom/android/common/exif/o;->QV(D)[Lcom/android/common/exif/m;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v1

    .line 1993
    sget v0, Lcom/android/common/exif/o;->PV:I

    invoke-static {p3, p4}, Lcom/android/common/exif/o;->QV(D)[Lcom/android/common/exif/m;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v2

    .line 1994
    sget v3, Lcom/android/common/exif/o;->PW:I

    .line 1995
    cmpl-double v0, p1, v6

    if-ltz v0, :cond_36

    const-string/jumbo v0, "N"

    .line 1994
    :goto_1f
    invoke-virtual {p0, v3, v0}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v3

    .line 1997
    sget v4, Lcom/android/common/exif/o;->PX:I

    .line 1998
    cmpl-double v0, p3, v6

    if-ltz v0, :cond_3a

    const-string/jumbo v0, "E"

    .line 1997
    :goto_2c
    invoke-virtual {p0, v4, v0}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v0

    .line 2000
    if-eqz v1, :cond_34

    if-nez v2, :cond_3e

    .line 2001
    :cond_34
    const/4 v0, 0x0

    return v0

    .line 1996
    :cond_36
    const-string/jumbo v0, "S"

    goto :goto_1f

    .line 1999
    :cond_3a
    const-string/jumbo v0, "W"

    goto :goto_2c

    .line 2000
    :cond_3e
    if-eqz v3, :cond_34

    if-eqz v0, :cond_34

    .line 2003
    invoke-virtual {p0, v1}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 2004
    invoke-virtual {p0, v2}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 2005
    invoke-virtual {p0, v3}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 2006
    invoke-virtual {p0, v0}, Lcom/android/common/exif/o;->QQ(Lcom/android/common/exif/k;)Lcom/android/common/exif/k;

    .line 2007
    const/4 v0, 0x1

    return v0
.end method

.method public Rc(IILjava/lang/Object;)Lcom/android/common/exif/k;
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1503
    invoke-virtual {p0}, Lcom/android/common/exif/o;->QM()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1504
    if-eqz v0, :cond_e

    if-nez p3, :cond_f

    .line 1505
    :cond_e
    return-object v6

    .line 1507
    :cond_f
    invoke-static {v0}, Lcom/android/common/exif/o;->Rq(I)S

    move-result v2

    .line 1508
    invoke-static {v0}, Lcom/android/common/exif/o;->Rf(I)I

    move-result v3

    .line 1509
    if-eqz v3, :cond_1a

    const/4 v5, 0x1

    .line 1510
    :cond_1a
    invoke-static {v0, p2}, Lcom/android/common/exif/o;->QN(II)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1511
    return-object v6

    .line 1513
    :cond_21
    new-instance v0, Lcom/android/common/exif/k;

    invoke-static {p1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/common/exif/k;-><init>(SSIIZ)V

    .line 1514
    invoke-virtual {v0, p3}, Lcom/android/common/exif/k;->Qk(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 1515
    return-object v6

    .line 1517
    :cond_32
    return-object v0
.end method

.method public Rg(I)I
    .registers 3

    .prologue
    .line 1454
    invoke-virtual {p0}, Lcom/android/common/exif/o;->QM()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1455
    if-nez v0, :cond_c

    .line 1456
    const/4 v0, -0x1

    return v0

    .line 1458
    :cond_c
    invoke-static {p1}, Lcom/android/common/exif/o;->Rp(I)I

    move-result v0

    return v0
.end method

.method public Rh(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 4

    .prologue
    .line 963
    if-nez p1, :cond_b

    .line 964
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 966
    :cond_b
    new-instance v0, Lcom/android/common/exif/h;

    invoke-direct {v0, p1, p0}, Lcom/android/common/exif/h;-><init>(Ljava/io/OutputStream;Lcom/android/common/exif/o;)V

    .line 967
    iget-object v1, p0, Lcom/android/common/exif/o;->RT:Lcom/android/common/exif/a;

    invoke-virtual {v0, v1}, Lcom/android/common/exif/h;->Pn(Lcom/android/common/exif/a;)V

    .line 968
    return-object v0
.end method

.method public Ri(Ljava/lang/String;)Ljava/io/OutputStream;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 984
    if-nez p1, :cond_c

    .line 985
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_16

    .line 994
    invoke-virtual {p0, v0}, Lcom/android/common/exif/o;->Rh(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 990
    :catch_16
    move-exception v0

    .line 991
    invoke-static {v1}, Lcom/android/common/exif/o;->QW(Ljava/io/Closeable;)V

    .line 992
    throw v0
.end method

.method public Rk(II)Lcom/android/common/exif/k;
    .registers 5

    .prologue
    .line 1182
    invoke-static {p2}, Lcom/android/common/exif/k;->Pw(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1183
    const/4 v0, 0x0

    return-object v0

    .line 1185
    :cond_8
    iget-object v0, p0, Lcom/android/common/exif/o;->RT:Lcom/android/common/exif/a;

    invoke-static {p1}, Lcom/android/common/exif/o;->QK(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/common/exif/a;->Os(SI)Lcom/android/common/exif/k;

    move-result-object v0

    return-object v0
.end method

.method public Rl(II)Ljava/lang/Integer;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1270
    invoke-virtual {p0, p1, p2}, Lcom/android/common/exif/o;->Rm(II)[I

    move-result-object v0

    .line 1271
    if-eqz v0, :cond_b

    array-length v1, v0

    if-gtz v1, :cond_c

    .line 1272
    :cond_b
    return-object v3

    .line 1274
    :cond_c
    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public Rm(II)[I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1346
    invoke-virtual {p0, p1, p2}, Lcom/android/common/exif/o;->Rk(II)Lcom/android/common/exif/k;

    move-result-object v0

    .line 1347
    if-nez v0, :cond_8

    .line 1348
    return-object v1

    .line 1350
    :cond_8
    invoke-virtual {v0}, Lcom/android/common/exif/k;->PU()[I

    move-result-object v0

    return-object v0
.end method

.method public Rn(II)Lcom/android/common/exif/m;
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1308
    invoke-virtual {p0, p1, p2}, Lcom/android/common/exif/o;->Ro(II)[Lcom/android/common/exif/m;

    move-result-object v0

    .line 1309
    if-eqz v0, :cond_b

    array-length v1, v0

    if-nez v1, :cond_c

    .line 1310
    :cond_b
    return-object v3

    .line 1312
    :cond_c
    new-instance v1, Lcom/android/common/exif/m;

    aget-object v0, v0, v2

    invoke-direct {v1, v0}, Lcom/android/common/exif/m;-><init>(Lcom/android/common/exif/m;)V

    return-object v1
.end method

.method public Ro(II)[Lcom/android/common/exif/m;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1384
    invoke-virtual {p0, p1, p2}, Lcom/android/common/exif/o;->Rk(II)Lcom/android/common/exif/k;

    move-result-object v0

    .line 1385
    if-nez v0, :cond_8

    .line 1386
    return-object v1

    .line 1388
    :cond_8
    invoke-virtual {v0}, Lcom/android/common/exif/k;->PV()[Lcom/android/common/exif/m;

    move-result-object v0

    return-object v0
.end method

.method public Rs(Ljava/io/InputStream;)V
    .registers 6

    .prologue
    .line 737
    if-nez p1, :cond_b

    .line 738
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_b
    :try_start_b
    new-instance v0, Lcom/android/common/exif/j;

    invoke-direct {v0, p0}, Lcom/android/common/exif/j;-><init>(Lcom/android/common/exif/o;)V

    invoke-virtual {v0, p1}, Lcom/android/common/exif/j;->Pu(Ljava/io/InputStream;)Lcom/android/common/exif/a;
    :try_end_13
    .catch Lcom/android/common/exif/ExifInvalidFormatException; {:try_start_b .. :try_end_13} :catch_17

    move-result-object v0

    .line 746
    iput-object v0, p0, Lcom/android/common/exif/o;->RT:Lcom/android/common/exif/a;

    .line 736
    return-void

    .line 743
    :catch_17
    move-exception v0

    .line 744
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid exif format : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public Rt(Ljava/lang/String;Ljava/util/Collection;)Z
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 1017
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1018
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_67
    .catchall {:try_start_1 .. :try_end_10} :catchall_65

    .line 1023
    :try_start_10
    invoke-static {v1, p0}, Lcom/android/common/exif/b;->OM(Ljava/io/InputStream;Lcom/android/common/exif/o;)Lcom/android/common/exif/b;
    :try_end_13
    .catch Lcom/android/common/exif/ExifInvalidFormatException; {:try_start_10 .. :try_end_13} :catch_42
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_4c
    .catchall {:try_start_10 .. :try_end_13} :catchall_3c

    move-result-object v2

    .line 1027
    :try_start_14
    invoke-virtual {v2}, Lcom/android/common/exif/b;->OD()I

    move-result v2

    int-to-long v4, v2

    .line 1030
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_4c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_3c

    .line 1034
    :try_start_1c
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rw"

    invoke-direct {v7, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_67
    .catchall {:try_start_1c .. :try_end_24} :catchall_65

    .line 1035
    :try_start_24
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 1036
    cmp-long v0, v0, v4

    if-gez v0, :cond_4e

    .line 1037
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Filesize changed during operation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_35} :catch_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_65

    .line 1046
    :catch_35
    move-exception v0

    move-object v1, v6

    move-object v6, v7

    .line 1047
    :goto_38
    :try_start_38
    invoke-static {v6}, Lcom/android/common/exif/o;->QW(Ljava/io/Closeable;)V

    .line 1048
    throw v0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 1049
    :catchall_3c
    move-exception v0

    move-object v6, v1

    .line 1050
    :goto_3e
    invoke-static {v6}, Lcom/android/common/exif/o;->QW(Ljava/io/Closeable;)V

    .line 1049
    throw v0

    .line 1024
    :catch_42
    move-exception v0

    .line 1025
    :try_start_43
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid exif format : "

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4c} :catch_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_3c

    .line 1046
    :catch_4c
    move-exception v0

    goto :goto_38

    .line 1041
    :cond_4e
    :try_start_4e
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 1045
    invoke-virtual {p0, v0, p2}, Lcom/android/common/exif/o;->Ru(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5d} :catch_35
    .catchall {:try_start_4e .. :try_end_5d} :catchall_65

    move-result v0

    .line 1050
    invoke-static {v6}, Lcom/android/common/exif/o;->QW(Ljava/io/Closeable;)V

    .line 1052
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 1053
    return v0

    .line 1049
    :catchall_65
    move-exception v0

    goto :goto_3e

    .line 1046
    :catch_67
    move-exception v0

    move-object v1, v6

    goto :goto_38
.end method

.method public Ru(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .registers 7

    .prologue
    .line 1072
    :try_start_0
    new-instance v1, Lcom/android/common/exif/f;

    invoke-direct {v1, p1, p0}, Lcom/android/common/exif/f;-><init>(Ljava/nio/ByteBuffer;Lcom/android/common/exif/o;)V

    .line 1073
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/exif/k;

    .line 1074
    invoke-virtual {v1, v0}, Lcom/android/common/exif/f;->Ph(Lcom/android/common/exif/k;)V
    :try_end_18
    .catch Lcom/android/common/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_9

    .line 1077
    :catch_19
    move-exception v0

    .line 1078
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid exif format : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1076
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Lcom/android/common/exif/f;->commit()Z
    :try_end_37
    .catch Lcom/android/common/exif/ExifInvalidFormatException; {:try_start_34 .. :try_end_37} :catch_19

    move-result v0

    return v0
.end method

.method public Rv([BLjava/lang/String;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 856
    if-eqz p1, :cond_5

    if-nez p2, :cond_e

    .line 857
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_e
    :try_start_e
    invoke-virtual {p0, p2}, Lcom/android/common/exif/o;->Ri(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 862
    array-length v0, p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 863
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_1e

    .line 868
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 855
    return-void

    .line 864
    :catch_1e
    move-exception v0

    .line 865
    invoke-static {v1}, Lcom/android/common/exif/o;->QW(Ljava/io/Closeable;)V

    .line 866
    throw v0
.end method
