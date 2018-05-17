.class public final Lcom/android/camera/cameraFamily/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final amg:Landroid/net/Uri;

.field public static final amh:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 68
    const-string/jumbo v0, "content://nubia.camera.family/member"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/cameraFamily/i;->amg:Landroid/net/Uri;

    .line 81
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 82
    const-string/jumbo v1, "family_member_number"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "family_member_type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "family_member_state"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "family_member_name"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "family_member_icon_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "family_member_icon"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "family_member_action"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 81
    sput-object v0, Lcom/android/camera/cameraFamily/i;->amh:[Ljava/lang/String;

    .line 66
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
