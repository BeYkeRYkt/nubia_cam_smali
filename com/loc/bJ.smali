.class public Lcom/loc/bJ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final bhO:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/loc/bJ;->bhO:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const-string/jumbo v1, "even"

    const-string/jumbo v2, "bcfguvyz"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@15
    nop

    const-string/jumbo v1, "odd"

    const-string/jumbo v2, "prxz"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@15
    nop

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const-string/jumbo v2, "even"

    const-string/jumbo v3, "0145hjnp"

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@15
    nop

    const-string/jumbo v2, "odd"

    const-string/jumbo v3, "028b"

    #disallowed odex opcode
    #invoke-virtual-quick {v1, v2, v3}, vtable@15
    nop

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const-string/jumbo v3, "even"

    const-string/jumbo v4, "prxz"

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3, v4}, vtable@15
    nop

    const-string/jumbo v3, "odd"

    const-string/jumbo v4, "bcfguvyz"

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3, v4}, vtable@15
    nop

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    const-string/jumbo v4, "even"

    const-string/jumbo v5, "028b"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4, v5}, vtable@15
    nop

    const-string/jumbo v4, "odd"

    const-string/jumbo v5, "0145hjnp"

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4, v5}, vtable@15
    nop

    sget-object v4, Lcom/loc/bJ;->bhO:Ljava/util/Hashtable;

    const-string/jumbo v5, "top"

    #disallowed odex opcode
    #invoke-virtual-quick {v4, v5, v0}, vtable@15
    nop

    sget-object v0, Lcom/loc/bJ;->bhO:Ljava/util/Hashtable;

    const-string/jumbo v4, "btm"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v4, v1}, vtable@15
    nop

    sget-object v0, Lcom/loc/bJ;->bhO:Ljava/util/Hashtable;

    const-string/jumbo v1, "right"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@15
    nop

    sget-object v0, Lcom/loc/bJ;->bhO:Ljava/util/Hashtable;

    const-string/jumbo v1, "left"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v3}, vtable@15
    nop

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
