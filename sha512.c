#include <stdio.h>

#define W64 64

#define WORD uint64_t
//#define PF PRIX64

//preprocessor version of ch no overhead
#define CH(x,y,z) (x&y)^(~x&z)
#define MAJ(x,y,z) (x&y)^(x&z)^(y&z)

//page 5 secure hash standard nist - SHA256 OPS
//ROTATE DIFFERENT FROM SHIFT
//Rotate will put the same bit off one end to the other, shift will just add zeros
#define ROTL(x,n) (x<<n)|(x>>(W64-n))
#define ROTR(x,n) (x>>n)|(x<<(W64-n))
//literally just shift right
#define SHR(x,n) x>>n

//512 functions
#define SIG0(x) ROTR(x,28)^ROTR(x,34)^ROTR(x,39)
#define SIG1(x) ROTR(x,14)^ROTR(x,18)^ROTR(x,41)
#define Sig0(x) ROTR(x,1)^ROTR(x,8)^SHR(x,7)
#define Sig1(x) ROTR(x,19)^ROTR(x,61)^SHR(x,6)


#define H0 6a09e667f3bcc908
#define H1 
#define H2
#define H3
#define H4
#define H5
#define H6
#define H7

int main() {
    FILE *file;
    char filepath[255], out;

    printf("Enter a file path: ");
    scanf("%s", &filepath);

    file = fopen(&filepath, "r");
    if (file == NULL) 
    { 
        printf("Cannot open file \n"); 
        return 0;
    } 

    printf("Ive opened a file\n");
    fscanf(file,"%c", &out);

    printf("Value of %c \n", out);

    fclose(file); 

    return 0;
}

//Steps for Sha-512

