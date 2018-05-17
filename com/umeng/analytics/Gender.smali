.class public enum Lcom/umeng/analytics/Gender;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum Female:Lcom/umeng/analytics/Gender;

.field public static final enum Male:Lcom/umeng/analytics/Gender;

.field public static final enum Unknown:Lcom/umeng/analytics/Gender;

.field private static final synthetic a:[Lcom/umeng/analytics/Gender;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/umeng/analytics/Gender$1;

    const-string/jumbo v1, "Male"

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/Gender$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/Gender;->Male:Lcom/umeng/analytics/Gender;

    .line 16
    new-instance v0, Lcom/umeng/analytics/Gender$2;

    const-string/jumbo v1, "Female"

    invoke-direct {v0, v1, v3, v4}, Lcom/umeng/analytics/Gender$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/Gender;->Female:Lcom/umeng/analytics/Gender;

    .line 21
    new-instance v0, Lcom/umeng/analytics/Gender$3;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1, v4, v2}, Lcom/umeng/analytics/Gender$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/umeng/analytics/Gender;->Unknown:Lcom/umeng/analytics/Gender;

    const/4 v0, 0x3

    .line 10
    new-array v0, v0, [Lcom/umeng/analytics/Gender;

    sget-object v1, Lcom/umeng/analytics/Gender;->Male:Lcom/umeng/analytics/Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/Gender;->Female:Lcom/umeng/analytics/Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/Gender;->Unknown:Lcom/umeng/analytics/Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/analytics/Gender;->a:[Lcom/umeng/analytics/Gender;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/umeng/analytics/Gender;->value:I

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/umeng/analytics/Gender$1;)V
    .registers 5

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/analytics/Gender;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static getGender(I)Lcom/umeng/analytics/Gender;
    .registers 2

    .prologue
    .line 39
    packed-switch p0, :pswitch_data_c

    .line 48
    :pswitch_3
    sget-object v0, Lcom/umeng/analytics/Gender;->Unknown:Lcom/umeng/analytics/Gender;

    .line 51
    :goto_5
    return-object v0

    .line 41
    :pswitch_6
    sget-object v0, Lcom/umeng/analytics/Gender;->Male:Lcom/umeng/analytics/Gender;

    goto :goto_5

    .line 44
    :pswitch_9
    sget-object v0, Lcom/umeng/analytics/Gender;->Female:Lcom/umeng/analytics/Gender;

    goto :goto_5

    .line 39
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_3
    .end packed-switch
.end method

.method public static transGender(Lcom/umeng/analytics/Gender;)Lu/aly/ay;
    .registers 3

    .prologue
    .line 55
    sget-object v0, Lcom/umeng/analytics/Gender$4;->a:[I

    invoke-virtual {p0}, Lcom/umeng/analytics/Gender;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 62
    :pswitch_b
    sget-object v0, Lu/aly/ay;->bzy:Lu/aly/ay;

    return-object v0

    .line 57
    :pswitch_e
    sget-object v0, Lu/aly/ay;->bzw:Lu/aly/ay;

    return-object v0

    .line 59
    :pswitch_11
    sget-object v0, Lu/aly/ay;->bzx:Lu/aly/ay;

    return-object v0

    .line 55
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/Gender;
    .registers 2

    .prologue
    const-class v0, Lcom/umeng/analytics/Gender;

    .line 10
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/Gender;

    return-object v0
.end method

.method public static values()[Lcom/umeng/analytics/Gender;
    .registers 1

    .prologue
    .line 10
    sget-object v0, Lcom/umeng/analytics/Gender;->a:[Lcom/umeng/analytics/Gender;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/Gender;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/umeng/analytics/Gender;->value:I

    return v0
.end method
